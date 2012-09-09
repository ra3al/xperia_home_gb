.class Lcom/sonyericsson/home/PreferencesAboutActivity$1;
.super Ljava/lang/Object;
.source "PreferencesAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/PreferencesAboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/PreferencesAboutActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/PreferencesAboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonyericsson/home/PreferencesAboutActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesAboutActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=ra3o.ra3@gmail.com&item_name=Donation+Xperia+Home&no_shipping=1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v0, browse:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesAboutActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesAboutActivity;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
