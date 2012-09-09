.class Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;
.super Ljava/lang/Object;
.source "SemcFacebookImpl.java"

# interfaces
.implements Lcom/sonyericsson/facebook/proxy/SemcFacebook;


# static fields
.field private static final FILE_TAG:Ljava/lang/String; = "SemcFacebookImpl: "

.field private static final TIMEOUT_DELAY:J = 0x1770L


# instance fields
.field private mApplicationId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getComponent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "settingId"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, componentName:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 210
    .local v3, metadata:Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sonyericsson.facebook.intent.action.FBI_APP_SETTING_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 214
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 218
    .local v6, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 220
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 221
    const-string v8, "com.sonyericsson.facebook.preference.setting_id"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, serviceSettingId:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 224
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #componentName:Landroid/content/ComponentName;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, p2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v7           #serviceSettingId:Ljava/lang/String;
    .restart local v0       #componentName:Landroid/content/ComponentName;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public createProxy(Landroid/content/Context;)Lcom/sonyericsson/facebook/proxy/FacebookProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context = null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    new-instance v0, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/facebook/proxy/FacebookProxyImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "context = null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 80
    .local v2, semaphore:Ljava/util/concurrent/Semaphore;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->createProxy(Landroid/content/Context;)Lcom/sonyericsson/facebook/proxy/FacebookProxy;

    move-result-object v1

    .line 81
    .local v1, proxy:Lcom/sonyericsson/facebook/proxy/FacebookProxy;
    new-instance v3, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl$1;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl$1;-><init>(Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, p1, v3}, Lcom/sonyericsson/facebook/proxy/FacebookProxy;->setTokenListener(Landroid/content/Context;Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;)V

    .line 95
    const-wide/16 v3, 0x1770

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-interface {v1}, Lcom/sonyericsson/facebook/proxy/FacebookProxy;->getAccessToken()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 101
    invoke-interface {v1, p1, v6}, Lcom/sonyericsson/facebook/proxy/FacebookProxy;->setTokenListener(Landroid/content/Context;Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;)V

    .line 105
    :goto_0
    return-object v3

    .line 101
    :cond_1
    invoke-interface {v1, p1, v6}, Lcom/sonyericsson/facebook/proxy/FacebookProxy;->setTokenListener(Landroid/content/Context;Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;)V

    :goto_1
    move-object v3, v6

    .line 105
    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 99
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v3, "SemcFbProxy"

    const-string v4, "getAccessToken interrupted"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-interface {v1, p1, v6}, Lcom/sonyericsson/facebook/proxy/FacebookProxy;->setTokenListener(Landroid/content/Context;Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    invoke-interface {v1, p1, v6}, Lcom/sonyericsson/facebook/proxy/FacebookProxy;->setTokenListener(Landroid/content/Context;Lcom/sonyericsson/facebook/proxy/FacebookProxy$TokenListener;)V

    throw v3
.end method

.method public declared-synchronized getApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    monitor-enter p0

    if-nez p1, :cond_0

    .line 54
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context = null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->mApplicationId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/sonyericsson/facebook/proxy/CredentialHandler;

    invoke-direct {v0}, Lcom/sonyericsson/facebook/proxy/CredentialHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/facebook/proxy/CredentialHandler;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->mApplicationId:Ljava/lang/String;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->mApplicationId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "settingId"

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, returnValue:Z
    const/4 v0, 0x0

    .line 113
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 114
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters context, packageName or settingId may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->getInstance()Lcom/sonyericsson/facebook/proxy/DatabaseHelper;

    move-result-object v1

    .line 125
    .local v1, helper:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    const-string v4, "value"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 128
    .local v2, index:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 129
    const/4 v3, 0x0

    .line 145
    :goto_0
    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v1           #helper:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    .end local v2           #index:I
    :cond_2
    return v3

    .line 131
    .restart local v1       #helper:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    .restart local v2       #index:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 137
    .end local v2           #index:I
    :cond_4
    :try_start_1
    const-string v4, "SemcFbProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemcFacebookImpl: Could not find packageName/SettingId combo for setting packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " settingId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No application setting matching provided packageName and settingId has been registered"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v1           #helper:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context = null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-static {}, Lcom/sonyericsson/facebook/proxy/AccountHelper;->getInstance()Lcom/sonyericsson/facebook/proxy/AccountHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/facebook/proxy/AccountHelper;->isAccountAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setApplicationEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "settingId"
    .parameter "value"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 159
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters context, packageName or settingId may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 165
    .local v3, oldValue:Z
    if-eq v3, p4, :cond_3

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, contextPackageName:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Updating setting outside of own package not allowed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_2
    invoke-static {}, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->getInstance()Lcom/sonyericsson/facebook/proxy/DatabaseHelper;

    move-result-object v1

    .line 177
    .local v1, helper:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 179
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonyericsson.facebook.intent.action.FBI_APP_SETTING_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/facebook/proxy/SemcFacebookImpl;->getComponent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    const-string v4, "com.sonyericsson.facebook.intent.extra.SETTING_ID"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v4, "com.sonyericsson.facebook.intent.extra.SETTING_STATUS"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 196
    .end local v0           #contextPackageName:Ljava/lang/String;
    .end local v1           #helper:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 188
    .restart local v0       #contextPackageName:Ljava/lang/String;
    .restart local v1       #helper:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    :cond_4
    const-string v4, "SemcFbProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemcFacebookImpl: Could not update packageName/SettingId combo for setting packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " settingId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Update for setting matching provided packageName and settingId failed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
