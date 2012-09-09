.class Lcom/sonyericsson/home/layer/AdapterHelper$1;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

.field final synthetic val$badgeView:Lcom/sonyericsson/home/badge/BadgeView;

.field final synthetic val$iconView:Landroid/widget/ImageView;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$labelView:Landroid/widget/TextView;

.field final synthetic val$mirrorEffect:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;ZLandroid/widget/ImageView;Landroid/widget/TextView;Lcom/sonyericsson/home/badge/BadgeView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$itemView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$mirrorEffect:Z

    iput-object p4, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$iconView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$labelView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$badgeView:Lcom/sonyericsson/home/badge/BadgeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "icon"
    .parameter "label"
    .parameter "badgeMessage"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$itemView:Landroid/view/View;

    invoke-static {}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$mirrorEffect:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-static {v1, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$100(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$labelView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    if-eqz p4, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$badgeView:Lcom/sonyericsson/home/badge/BadgeView;

    invoke-virtual {v0, p4}, Lcom/sonyericsson/home/badge/BadgeView;->setText(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$badgeView:Lcom/sonyericsson/home/badge/BadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    .line 187
    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
