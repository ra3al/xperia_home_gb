.class public abstract Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;
.super Landroid/app/Activity;
.source "WidgetTestActivity.java"


# instance fields
.field private mConfigPending:Z

.field private mDummy:Z

.field private mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

.field private mPlaceholder:Landroid/widget/RelativeLayout;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mConfigPending:Z

    .line 48
    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    .line 50
    new-instance v0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity$1;-><init>(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mPlaceholder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mConfigPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mConfigPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->addWidget()V

    return-void
.end method

.method private addWidget()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 154
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v5}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getSpanXY()[I

    move-result-object v2

    .line 155
    .local v2, span:[I
    aget v5, v2, v7

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x4

    .line 156
    .local v4, widgetWidth:I
    const/4 v5, 0x1

    aget v5, v2, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x5

    .line 157
    .local v3, widgetHeight:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v6}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 148
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, context:Landroid/content/Context;
    iget-boolean v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v3, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mRoot:Landroid/widget/RelativeLayout;

    .line 108
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mPlaceholder:Landroid/widget/RelativeLayout;

    .line 109
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->createAdvWidgetProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .line 114
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    if-nez v3, :cond_1

    .line 115
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "createAdvWidgetProxy failed!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setId(Ljava/util/UUID;)V

    .line 118
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V

    .line 119
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3, p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setActivity(Landroid/app/Activity;)V

    .line 120
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onCreate(Landroid/content/Context;)V

    .line 121
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->configure(Landroid/content/Context;)I

    move-result v2

    .line 122
    .local v2, ret:I
    packed-switch v2, :pswitch_data_0

    .line 137
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v3, :cond_3

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->setContentView(Landroid/view/View;)V

    .line 140
    :cond_3
    return-void

    .line 124
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->addWidget()V

    goto :goto_0

    .line 127
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mConfigPending:Z

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->remove()V

    .line 131
    iget-boolean v3, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v3, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->finish()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v0, :cond_0

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->remove()V

    .line 200
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v0, :cond_0

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v0, :cond_0

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    .line 175
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v0, :cond_0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    .line 191
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    if-nez v0, :cond_0

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mWidget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 183
    return-void
.end method

.method public setDummy()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/WidgetTestActivity;->mDummy:Z

    .line 92
    return-void
.end method
