.class public Lcom/sonyericsson/home/IconPreferenceScreen;
.super Landroid/preference/Preference;
.source "IconPreferenceScreen.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/home/IconPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const v1, 0x7f030021

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/IconPreferenceScreen;->setLayoutResource(I)V

    .line 39
    sget-object v1, Lcom/sonyericsson/home/R$styleable;->IconPreferenceScreen:[I

    .line 38
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/home/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 46
    const v1, 0x7f0e0043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/sonyericsson/home/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 53
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/home/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/home/IconPreferenceScreen;->notifyChanged()V

    .line 57
    :cond_2
    return-void
.end method
