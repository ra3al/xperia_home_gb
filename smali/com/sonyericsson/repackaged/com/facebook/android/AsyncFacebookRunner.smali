.class public Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;
.super Ljava/lang/Object;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;
    }
.end annotation


# instance fields
.field fb:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;)V
    .locals 0
    .parameter "fb"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->fb:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook;

    .line 59
    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public logout(Landroid/content/Context;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 86
    new-instance v0, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$1;-><init>(Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;Landroid/content/Context;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$1;->start()V

    .line 105
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .parameter "parameters"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 147
    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 143
    const/4 v1, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 218
    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 212
    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 7
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 256
    new-instance v0, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$2;-><init>(Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$2;->start()V

    .line 270
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .parameter "graphPath"
    .parameter "listener"

    .prologue
    .line 178
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .parameter "graphPath"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 174
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 175
    return-void
.end method
