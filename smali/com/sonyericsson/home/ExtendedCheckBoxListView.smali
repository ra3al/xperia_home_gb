.class public Lcom/sonyericsson/home/ExtendedCheckBoxListView;
.super Landroid/widget/LinearLayout;
.source "ExtendedCheckBoxListView.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mExtendedCheckBox:Lcom/sonyericsson/home/ExtendedCheckBox;

.field private mIcon:Landroid/widget/ImageView;

.field private mSCALE:F

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/ExtendedCheckBox;)V
    .locals 9
    .parameter "context"
    .parameter "extCheckBox"

    .prologue
    const/high16 v8, 0x40a0

    const/high16 v7, 0x4120

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->setOrientation(I)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    .line 56
    iput-object p2, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mExtendedCheckBox:Lcom/sonyericsson/home/ExtendedCheckBox;

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mIcon:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mExtendedCheckBox:Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-virtual {v1}, Lcom/sonyericsson/home/ExtendedCheckBox;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iget v2, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iget v3, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 62
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mText:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mExtendedCheckBox:Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-virtual {v1}, Lcom/sonyericsson/home/ExtendedCheckBox;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/sonyericsson/home/ExtendedCheckBox;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mCheckBox:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sonyericsson/home/ExtendedCheckBoxListView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView$1;-><init>(Lcom/sonyericsson/home/ExtendedCheckBoxListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x4250

    iget v3, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x4228

    iget v4, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mSCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 86
    new-instance v0, Lcom/sonyericsson/home/ExtendedCheckBoxListView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView$2;-><init>(Lcom/sonyericsson/home/ExtendedCheckBoxListView;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/sonyericsson/home/ExtendedCheckBoxListView;)Lcom/sonyericsson/home/ExtendedCheckBox;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mExtendedCheckBox:Lcom/sonyericsson/home/ExtendedCheckBox;

    return-object v0
.end method


# virtual methods
.method public getActName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mExtendedCheckBox:Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-virtual {v0}, Lcom/sonyericsson/home/ExtendedCheckBox;->getActName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckBoxState()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setCheckBoxState(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mExtendedCheckBox:Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/ExtendedCheckBox;->setChecked(Z)V

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "words"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public toggleCheckBoxState()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->setCheckBoxState(Z)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
