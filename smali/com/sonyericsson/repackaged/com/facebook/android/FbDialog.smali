.class public Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;
.super Landroid/app/Dialog;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog$1;,
        Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog$FbWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F = null

.field static final DIMENSIONS_DIFF_PORTRAIT:[F = null

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FB_BLUE:I = -0x927b4c

.field static final FB_ICON:Ljava/lang/String; = "icon.png"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 51
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 52
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 53
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 51
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 52
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mListener:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;)Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mListener:Lcom/sonyericsson/repackaged/com/facebook/android/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->requestWindowFeature(I)Z

    .line 100
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const-string v1, "Facebook"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const v1, -0x927b4c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method private setUpWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog$FbWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog$FbWebViewClient;-><init>(Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 78
    iget-object v4, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 79
    iget-object v4, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v5, "Loading..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    .line 82
    iget-object v4, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->setUpTitle()V

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->setUpWebView()V

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 86
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 90
    .local v2, orientation:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    sget-object v4, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    move-object v0, v4

    .line 93
    .local v0, dimensions:[F
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    aget v7, v0, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v9

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    aget v8, v0, v8

    mul-float/2addr v8, v3

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void

    .line 90
    .end local v0           #dimensions:[F
    :cond_0
    sget-object v4, Lcom/sonyericsson/repackaged/com/facebook/android/FbDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    move-object v0, v4

    goto :goto_0
.end method
