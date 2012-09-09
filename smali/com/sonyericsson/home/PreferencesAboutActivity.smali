.class public Lcom/sonyericsson/home/PreferencesAboutActivity;
.super Landroid/app/Activity;
.source "PreferencesAboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getTimeStamp()Ljava/lang/String;
    .locals 9

    .prologue
    .line 89
    const-string v1, ""

    .line 92
    .local v1, sresult:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 93
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    new-instance v5, Ljava/util/zip/ZipFile;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 94
    .local v5, zf:Ljava/util/zip/ZipFile;
    const-string v6, "classes.dex"

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 95
    .local v4, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    .line 96
    .local v2, time:J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #time:J
    .end local v4           #ze:Ljava/util/zip/ZipEntry;
    .end local v5           #zf:Ljava/util/zip/ZipFile;
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    const-string v1, ""

    .line 108
    .local v1, sresult:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 109
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v10, "About Xperia\u2122 Home"

    invoke-virtual {p0, v10}, Lcom/sonyericsson/home/PreferencesAboutActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .local v3, lay:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    .local v6, tx0:Landroid/widget/TextView;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    .local v5, tx:Landroid/widget/TextView;
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    .local v7, tx2:Landroid/widget/TextView;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v2, icon:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, donatebtn:Landroid/widget/Button;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 43
    const/high16 v10, 0x7f07

    invoke-virtual {p0, v10}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    const/4 v10, 0x1

    const/high16 v11, 0x41b0

    invoke-virtual {v6, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getTimeStamp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    const/4 v10, 0x1

    const/high16 v11, 0x4180

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    const-string v10, "\nModified by Lazar Dimitrov (ra3al)\n\nCopyright \u00a9 2012\nSony Mobile Communications AB\n\nIf you like this launcher and would like to see a continued development, please consider a small donation.\n"

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    const/4 v10, 0x1

    const/high16 v11, 0x4160

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    const v10, 0x7f020045

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    const/4 v10, 0x0

    const/16 v11, 0x11

    const/4 v12, 0x0

    const/16 v13, 0xc

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 58
    const-string v10, "Donate"

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .local v0, SCALE:F
    const/high16 v8, 0x4248

    .line 63
    .local v8, valueDips:F
    mul-float v10, v8, v0

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 65
    .local v9, valuePixels:I
    new-instance v10, Lcom/sonyericsson/home/PreferencesAboutActivity$1;

    invoke-direct {v10, p0}, Lcom/sonyericsson/home/PreferencesAboutActivity$1;-><init>(Lcom/sonyericsson/home/PreferencesAboutActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v10}, Lcom/sonyericsson/home/PreferencesAboutActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    .local v4, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 82
    const/high16 v10, 0x40a0

    mul-float/2addr v10, v0

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 83
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .restart local v4       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 85
    return-void
.end method
