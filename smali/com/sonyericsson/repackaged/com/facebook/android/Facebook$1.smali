.class Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;


# direct methods
.method constructor <init>(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 336
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-static {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->access$000(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 338
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 309
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->setAccessExpiresIn(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-static {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->access$000(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-static {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->access$000(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/repackaged/com/facebook/android/FacebookError;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/sonyericsson/repackaged/com/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/sonyericsson/repackaged/com/facebook/android/FacebookError;)V

    goto :goto_0
.end method

.method public onError(Lcom/sonyericsson/repackaged/com/facebook/android/DialogError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 326
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-static {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->access$000(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;->onError(Lcom/sonyericsson/repackaged/com/facebook/android/DialogError;)V

    .line 328
    return-void
.end method

.method public onFacebookError(Lcom/sonyericsson/repackaged/com/facebook/android/FacebookError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 331
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$1;->this$0:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    invoke-static {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;->access$000(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/sonyericsson/repackaged/com/facebook/android/FacebookError;)V

    .line 333
    return-void
.end method
