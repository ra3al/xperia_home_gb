.class public interface abstract Lcom/sonyericsson/facebook/proxy/SemcFacebook;
.super Ljava/lang/Object;
.source "SemcFacebook.java"


# static fields
.field public static final ACTION_AUTHORIZE:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.FBI_AUTHORIZATION"

.field public static final ACTION_FBI_APP_SETTING_CHANGED:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.FBI_APP_SETTING_CHANGED"

.field public static final ACTION_FBI_DISABLED:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.FBI_DISABLED"

.field public static final ACTION_FBI_ENABLED:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.FBI_ENABLED"

.field public static final ACTION_INVALIDATE_TOKEN:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.INVALID_TOKEN"

.field public static final ACTION_QUERY_PERMISSIONS:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.QUERY_PERMISSIONS"

.field public static final ACTION_SHOW_APP_SETTINGS:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.SHOW_APP_SETTINGS"

.field public static final ACTION_SHOW_SETTINGS:Ljava/lang/String; = "com.sonyericsson.facebook.intent.action.SHOW_SETTINGS"

.field public static final EXTRA_DISPLAY_FINISH_OPTION:Ljava/lang/String; = "com.sonyericsson.facebook.intent.extra.DISPLAY_FINISH_OPTION"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.sonyericsson.facebook.intent.extra.PERMISSONS"

.field public static final EXTRA_SETTING_ID:Ljava/lang/String; = "com.sonyericsson.facebook.intent.extra.SETTING_ID"

.field public static final EXTRA_SETTING_STATUS:Ljava/lang/String; = "com.sonyericsson.facebook.intent.extra.SETTING_STATUS"

.field public static final EXTRA_SUPPRESS_AUTOSYNC_DIALOG:Ljava/lang/String; = "com.sonyericsson.facebook.intent.extra.SUPPRESS_AUTOSYNC"

.field public static final METADATA_FBI_APP_SETTING_DESCRIPTION:Ljava/lang/String; = "com.sonyericsson.facebook.preference.description"

.field public static final METADATA_FBI_APP_SETTING_ID:Ljava/lang/String; = "com.sonyericsson.facebook.preference.setting_id"

.field public static final METADATA_FBI_APP_SETTING_TITLE:Ljava/lang/String; = "com.sonyericsson.facebook.preference.title"

.field public static final PERMISSION:Ljava/lang/String; = "com.sonyericsson.permission.FACEBOOK"


# virtual methods
.method public abstract createProxy(Landroid/content/Context;)Lcom/sonyericsson/facebook/proxy/FacebookProxy;
.end method

.method public abstract getAccessToken(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getApplicationId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isEnabled(Landroid/content/Context;)Z
.end method

.method public abstract setApplicationEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
