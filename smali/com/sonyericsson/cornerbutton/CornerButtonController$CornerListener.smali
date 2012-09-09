.class public Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;
.super Ljava/lang/Object;
.source "CornerButtonController.java"

# interfaces
.implements Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cornerbutton/CornerButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CornerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsedClick()V
    .locals 4

    .prologue
    .line 129
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v2}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->isExpandable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->expandButton(Z)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v2}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    .line 135
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method

.method public onDragOutside()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->expandButton(Z)V

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v1, v1, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 145
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 153
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v1, v1, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->cancelTouch()V

    goto :goto_0
.end method

.method public onFocusedAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 174
    return-void
.end method

.method public onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->collapseButton()V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;->onActionClicked(Lcom/sonyericsson/cornerbutton/CornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onOutsideClick()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->collapseButton()V

    .line 125
    return-void
.end method

.method public onOverAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;->onNewActionSelected(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 161
    :cond_0
    return-void
.end method
