.class public final Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
.super Lcom/sonyericsson/advancedwidget/framework/Proxy;
.source "AdvWidgetProxy.java"


# static fields
.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final TAG:Ljava/lang/String; = "AdvWidgetProxy"


# instance fields
.field private mCreated:Z

.field private mFocused:Z

.field private mResumed:Z

.field private mStarted:Z


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/advancedwidget/framework/Proxy;-><init>(Ljava/util/Map;)V

    .line 274
    return-void
.end method

.method public static createAdvWidgetProxy(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Ljava/lang/String;Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 10
    .parameter "hostActivity"
    .parameter "host"
    .parameter "packageName"
    .parameter "paramUUID"

    .prologue
    .line 31
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 34
    .local v6, widgetContext:Landroid/content/Context;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".SemcWidget"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 36
    .local v0, apkName:Ljava/lang/String;
    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v5, v0, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 37
    .local v5, myClassLoader:Ldalvik/system/PathClassLoader;
    const/4 v8, 0x0

    invoke-static {v1, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 39
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 40
    .local v3, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v7, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;-><init>(Ljava/util/Map;)V

    .line 41
    .local v7, widgetProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    invoke-virtual {v7, p3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setId(Ljava/util/UUID;)V

    .line 42
    invoke-virtual {v7, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V

    .line 43
    invoke-virtual {v7, p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setActivity(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {v7, v6}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #apkName:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #myClassLoader:Ldalvik/system/PathClassLoader;
    .end local v6           #widgetContext:Landroid/content/Context;
    .end local v7           #widgetProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :goto_0
    return-object v7

    .line 47
    :catch_0
    move-exception v4

    .line 49
    .local v4, localException:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static createAdvWidgetProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 9
    .parameter "hostContext"
    .parameter "packageName"

    .prologue
    .line 61
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".SemcWidget"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, className:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 63
    .local v0, apkName:Ljava/lang/String;
    new-instance v6, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 64
    .local v6, myClassLoader:Ldalvik/system/PathClassLoader;
    const/4 v7, 0x0

    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 67
    .local v3, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v4, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0           #apkName:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #myClassLoader:Ldalvik/system/PathClassLoader;
    :goto_0
    return-object v4

    .line 70
    :catch_0
    move-exception v5

    .line 72
    .local v5, localException:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static createAdvWidgetProxy_test(Ljava/util/Map;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public configure(Landroid/content/Context;)I
    .locals 2
    .parameter "hostContext"

    .prologue
    .line 214
    const-string v1, "configure"

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 215
    .local v0, ret:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public customize(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "settings"

    .prologue
    .line 222
    const-string v1, "customize"

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .local v0, ret:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 225
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 232
    const-string v0, "getContentView"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getFrameworkVersion()I
    .locals 2

    .prologue
    .line 59
    const-string v0, "getFrameworkVersion"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 246
    const-string v0, "getSnapshot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSpanXY()[I
    .locals 2

    .prologue
    .line 239
    const-string v0, "getSpanXY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    return-object p0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 255
    const-string v0, "getType"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 74
    const-string v0, "init"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 200
    const-string v0, "onConfigured"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    .line 93
    const-string v0, "onCreate"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    return-void
.end method

.method public onDefocus()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    .line 103
    const-string v0, "onDefocus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-eqz v0, :cond_1

    .line 180
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    .line 185
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    .line 113
    const-string v0, "onFocus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    return-void
.end method

.method public onMoved()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "onMoved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_1

    .line 142
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    .line 147
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    .line 128
    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    .line 157
    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-eqz v0, :cond_1

    .line 166
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    .line 171
    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    return-void
.end method

.method public onWidgetPicked(I)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 207
    const-string v0, "onWidgetPicked"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    .line 84
    :cond_0
    const-string v0, "remove"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 263
    const-string v0, "setActivity"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 67
    const-string v0, "setId"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
