.class public Lcom/sonyericsson/cornerbutton/BottomRight;
.super Lcom/sonyericsson/cornerbutton/CornerButton;
.source "BottomRight.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getDirection()F
    .locals 1

    .prologue
    .line 31
    const/high16 v0, 0x4307

    return v0
.end method

.method protected getFocusRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    const/16 v1, 0x46

    .line 47
    invoke-super {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getFocusRect(Landroid/graphics/Rect;)V

    .line 49
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 50
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 51
    return-void
.end method

.method protected getNextFocus(Lcom/sonyericsson/cornerbutton/Action;I)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "focusedAction"
    .parameter "direction"

    .prologue
    .line 55
    sparse-switch p2, :sswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/BottomRight;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getActionBelow(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/BottomRight;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getActionAbove(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setCenterPos(IIF)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "showHideProgress"

    .prologue
    .line 36
    const/16 v0, 0xa

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/cornerbutton/BottomRight;->mCenterX:I

    .line 37
    int-to-float v0, p2

    const/high16 v1, 0x4120

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/cornerbutton/BottomRight;->mCenterY:I

    .line 38
    return-void
.end method

.method protected shouldReverseActions()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
