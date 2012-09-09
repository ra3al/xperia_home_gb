.class public Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field protected static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field protected static final SETTING_ID:Ljava/lang/String; = "setting_id"

.field protected static final SETTING_VALUE:Ljava/lang/String; = "value"

.field private static sInstance:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://com.sonyericsson.facebook.proxylogin.appsettingsprovider/app_setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;

    invoke-direct {v1}, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;-><init>()V

    sput-object v1, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;

    .line 48
    :cond_0
    sget-object v1, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInstance(Lcom/sonyericsson/facebook/proxy/DatabaseHelper;)V
    .locals 2
    .parameter "helper"

    .prologue
    .line 52
    const-class v0, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->sInstance:Lcom/sonyericsson/facebook/proxy/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "settingId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v2, v5

    .line 59
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "package_name=? AND setting_id=?"

    .line 60
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    .line 62
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "settingId"
    .parameter "value"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "value"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string v2, "package_name=? AND setting_id=?"

    .line 71
    .local v2, selection:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    .line 73
    .local v3, selectionArgs:[Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/facebook/proxy/DatabaseHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method
