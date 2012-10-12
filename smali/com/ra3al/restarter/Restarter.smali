.class public Lcom/ra3al/restarter/Restarter;
.super Ljava/lang/Object;
.source "Restarter.java"


# static fields
.field private static final msg:Ljava/lang/String; = "The application will be restarted in order to apply the change(s)"

.field private static final msg2:Ljava/lang/String; = "The application is being restarted in order to apply the change(s) made..."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/ra3al/restarter/Restarter;);
    return-void
.end method

.method public static CancelRestart(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 24
    #v3=(Null);
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 25
    .local v1, prefs:Landroid/content/SharedPreferences;
    #v1=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 26
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v2, "restart_app"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    return-void
.end method

.method public static RequestRestart(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 17
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    .local v1, prefs:Landroid/content/SharedPreferences;
    #v1=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v2, "restart_app"

    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    return-void
.end method

.method public static RestartFast(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 83
    #v4=(Null);
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "restart_app"

    #v3=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 85
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, prefs:Landroid/content/SharedPreferences;
    #v1=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v2, "restart_app"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    #v2=(Integer);
    const/16 v3, 0x9

    #v3=(PosByte);
    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 93
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public static RestartLegacy(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 31
    const-string v0, "The application will be restarted in order to apply the change(s)"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0, p0}, Lcom/ra3al/restarter/Restarter;->RestartLegacyImpl(Ljava/lang/String;Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static RestartLegacy(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "message"

    .prologue
    .line 35
    invoke-static {p1, p0}, Lcom/ra3al/restarter/Restarter;->RestartLegacyImpl(Ljava/lang/String;Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private static RestartLegacyImpl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "s"
    .parameter "ctx"

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, dlgAlert:Landroid/app/AlertDialog$Builder;
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    const-string v2, "Restart required"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    const-string v2, "OK"

    .line 46
    new-instance v3, Lcom/ra3al/restarter/Restarter$1;

    #v3=(UninitRef,Lcom/ra3al/restarter/Restarter$1;);
    invoke-direct {v3}, Lcom/ra3al/restarter/Restarter$1;-><init>()V

    .line 45
    #v3=(Reference,Lcom/ra3al/restarter/Restarter$1;);
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #v2=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0           #dlgAlert:Landroid/app/AlertDialog$Builder;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    const-string v2, "xperia_home"

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "Cannot restart application"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static RestartLong(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 64
    #v4=(Null);
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "restart_app"

    #v3=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 66
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, prefs:Landroid/content/SharedPreferences;
    #v1=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v2, "restart_app"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    const-string v2, "The application will be restarted in order to apply the change(s)"

    invoke-static {v2, p0}, Lcom/ra3al/restarter/Restarter;->RestartLegacyImpl(Ljava/lang/String;Landroid/content/Context;)V

    .line 72
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public static RestartLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 75
    #v3=(Null);
    const-string v2, "com.sonyericsson.home_preferences"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, prefs:Landroid/content/SharedPreferences;
    #v1=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v2, "restart_app"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    invoke-static {p1, p0}, Lcom/ra3al/restarter/Restarter;->RestartLegacyImpl(Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    return-void
.end method
