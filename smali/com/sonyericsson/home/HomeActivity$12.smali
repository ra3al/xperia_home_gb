.class Lcom/sonyericsson/home/HomeActivity$12;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createAppShareDropZone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;

.field final synthetic val$mainLayer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$12;->val$mainLayer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelHint()V
    .locals 3

    .prologue
    .line 1753
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1754
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getFreeCorners()[Z

    move-result-object v0

    .line 1755
    .local v0, visibility:[Z
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerVisibility([Z)V

    .line 1756
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$4702(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1758
    .end local v0           #visibility:[Z
    :cond_0
    return-void
.end method

.method public onDrop(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/HomeActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1746
    return-void
.end method

.method public onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1741
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->val$mainLayer:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1742
    return-void
.end method

.method public onHint()V
    .locals 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$4702(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1750
    return-void
.end method

.method public onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1728
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1729
    .local v1, win:Landroid/view/Window;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1730
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1732
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$12;->val$mainLayer:Landroid/view/View;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1733
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1735
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1736
    return-void
.end method
