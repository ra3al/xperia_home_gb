.class public Lcom/sonyericsson/repackaged/com/facebook/android/DialogError;
.super Ljava/lang/Throwable;
.source "DialogError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mFailingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "errorCode"
    .parameter "failingUrl"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 45
    iput p2, p0, Lcom/sonyericsson/repackaged/com/facebook/android/DialogError;->mErrorCode:I

    .line 46
    iput-object p3, p0, Lcom/sonyericsson/repackaged/com/facebook/android/DialogError;->mFailingUrl:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/DialogError;->mErrorCode:I

    return v0
.end method

.method getFailingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/DialogError;->mFailingUrl:Ljava/lang/String;

    return-object v0
.end method
