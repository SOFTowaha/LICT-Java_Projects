package com.pubnub.api.managers;


import com.pubnub.api.PubNub;
import com.pubnub.api.enums.PNLogVerbosity;
import com.pubnub.api.interceptors.SignatureInterceptor;
import lombok.Getter;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class RetrofitManager {

    private PubNub pubnub;

    private SignatureInterceptor signatureInterceptor;

    private OkHttpClient transactionClientInstance;
    private OkHttpClient subscriptionClientInstance;

    @Getter private Retrofit transactionInstance;
    @Getter private Retrofit subscriptionInstance;

    public RetrofitManager(PubNub pubNubInstance) {
        this.pubnub = pubNubInstance;

        this.signatureInterceptor = new SignatureInterceptor(pubNubInstance);

        this.transactionClientInstance = createOkHttpClient(
                this.pubnub.getConfiguration().getNonSubscribeRequestTimeout(),
                this.pubnub.getConfiguration().getConnectTimeout()
        );

        this.subscriptionClientInstance = createOkHttpClient(
                this.pubnub.getConfiguration().getSubscribeTimeout(),
                this.pubnub.getConfiguration().getConnectTimeout()
        );

        this.transactionInstance = createRetrofit(this.transactionClientInstance);
        this.subscriptionInstance = createRetrofit(this.subscriptionClientInstance);
    }

    private OkHttpClient createOkHttpClient(int requestTimeout, int connectTimeOut) {
        OkHttpClient.Builder httpClient = new OkHttpClient.Builder();
        httpClient.readTimeout(requestTimeout, TimeUnit.SECONDS);
        httpClient.connectTimeout(connectTimeOut, TimeUnit.SECONDS);

        if (pubnub.getConfiguration().getLogVerbosity() == PNLogVerbosity.BODY) {
            HttpLoggingInterceptor logging = new HttpLoggingInterceptor();
            logging.setLevel(HttpLoggingInterceptor.Level.BODY);
            httpClient.addInterceptor(logging);
        }

        if (pubnub.getConfiguration().getProxy() != null) {
            httpClient.proxy(pubnub.getConfiguration().getProxy());
        }

        if (pubnub.getConfiguration().getProxySelector() != null) {
            httpClient.proxySelector(pubnub.getConfiguration().getProxySelector());
        }

        if (pubnub.getConfiguration().getProxyAuthenticator() != null) {
            httpClient.proxyAuthenticator(pubnub.getConfiguration().getProxyAuthenticator());
        }

        httpClient.addInterceptor(this.signatureInterceptor);

        return httpClient.build();
    }

    private Retrofit createRetrofit(OkHttpClient client) {
        return new Retrofit.Builder()
                .baseUrl(pubnub.getBaseUrl())
                .addConverterFactory(this.pubnub.getMapper().getConverterFactory())
                .client(client)
                .build();
    }

    public void destroy() {
        closeExecutor(this.transactionClientInstance);
        closeExecutor(this.subscriptionClientInstance);
    }

    private void closeExecutor(OkHttpClient client) {
        client.connectionPool().evictAll();

        ExecutorService executorService = client.dispatcher().executorService();
        executorService.shutdown();

    }

}
