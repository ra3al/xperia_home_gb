.class Lcom/ra3al/restarter/Restarter$1;
.super Ljava/lang/Object;
.source "Restarter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ra3al/restarter/Restarter;->RestartLegacyImpl(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    #p0=(Reference,Lcom/ra3al/restarter/Restarter$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 50
    const-wide/16 v0, 0x190

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0x9

    #v1=(PosByte);
    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 52
    return-void
.end method
