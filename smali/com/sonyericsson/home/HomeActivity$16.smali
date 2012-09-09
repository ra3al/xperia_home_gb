.class Lcom/sonyericsson/home/HomeActivity$16;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createBadgeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadgeChanged(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "message"

    .prologue
    .line 1992
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$4800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 1993
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_0

    .line 1994
    iput-object p2, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    .line 1998
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 1999
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2000
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/folder/FolderController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2001
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2002
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2003
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2005
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2006
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2008
    :cond_2
    return-void
.end method
