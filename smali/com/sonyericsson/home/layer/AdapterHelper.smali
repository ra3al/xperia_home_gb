.class public Lcom/sonyericsson/home/layer/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# static fields
.field private static final FOLDER_VIEW_TYPE:I = 0x1

.field private static final ICON_VIEW_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INFO_TAG:I = 0x0

.field public static final START_OF_USER_DEFINED_ITEM_TYPES:I = 0x2

.field public static final VIEW_TYPE_COUNT:I = 0x2


# instance fields
.field private mLandscape:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMirrorLabelTopPadding:I

.field private final mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 2
    .parameter "context"
    .parameter "resourceLoader"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLandscape:Z

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mMirrorLabelTopPadding:I

    .line 98
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->createMirrorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private createMirrorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "drawable"

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, bitmap:Landroid/graphics/Bitmap;
    instance-of v2, p1, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    if-eqz v2, :cond_1

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 331
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 332
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLandscape:Z

    if-eqz v2, :cond_2

    .line 333
    new-instance v2, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 338
    :goto_1
    return-object v2

    .line 328
    :cond_1
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 329
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_2
    new-instance v2, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/drawable/MirrorBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 338
    goto :goto_1
.end method

.method public static getAdvWidgetInfoView(Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;
    .locals 2
    .parameter "advWidgetManager"
    .parameter "advWidgetInfo"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, advWidgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 266
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 268
    :cond_0
    return-object v0
.end method

.method public static getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "view"

    .prologue
    .line 348
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/Info;

    return-object p0
.end method

.method public static getWidgetInfoView(Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/data/WidgetInfo;)Landroid/view/View;
    .locals 2
    .parameter "widgetManager"
    .parameter "widgetInfo"

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetView(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, widgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 257
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 259
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "activityInfo"
    .parameter "convertView"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;Z)Landroid/view/View;
    .locals 10
    .parameter "activityInfo"
    .parameter "convertView"
    .parameter "mirrorEffect"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 137
    if-nez p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    :cond_0
    move-object v2, p2

    .line 142
    .local v2, itemView:Landroid/view/View;
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 144
    const v0, 0x7f0e001a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 145
    .local v4, iconView:Landroid/widget/ImageView;
    const v0, 0x7f0e001c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/badge/BadgeView;

    .line 146
    .local v6, badgeView:Lcom/sonyericsson/home/badge/BadgeView;
    const v0, 0x7f0e001b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 147
    .local v5, labelView:Landroid/widget/TextView;
    if-eqz p3, :cond_1

    .line 148
    iget v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mMirrorLabelTopPadding:I

    invoke-virtual {v5, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v7

    .line 153
    .local v7, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v7, :cond_4

    .line 154
    if-eqz p3, :cond_2

    .line 155
    iget-object v0, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->createMirrorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_0
    iget-object v0, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/sonyericsson/home/badge/BadgeView;->setText(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v6, v3}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    .line 191
    :goto_1
    return-object v2

    .line 157
    :cond_2
    iget-object v0, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v6, v8}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v6, v8}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->prioritizeResource(Lcom/sonyericsson/home/data/Info;)V

    .line 172
    iget-object v8, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v0, Lcom/sonyericsson/home/layer/AdapterHelper$1;

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/AdapterHelper$1;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;ZLandroid/widget/ImageView;Landroid/widget/TextView;Lcom/sonyericsson/home/badge/BadgeView;)V

    invoke-virtual {v8, p1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_1
.end method

.method public getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "infoGroup"
    .parameter "convertView"

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;Z)Landroid/view/View;
    .locals 8
    .parameter "infoGroup"
    .parameter "convertView"
    .parameter "mirrorEffect"

    .prologue
    const/4 v7, 0x0

    .line 280
    if-nez p2, :cond_0

    .line 281
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 284
    :cond_0
    move-object v2, p2

    .line 285
    .local v2, infoView:Landroid/view/View;
    sget v4, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v2, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 287
    const v4, 0x7f0e001a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 288
    .local v1, iconView:Landroid/widget/ImageView;
    const v4, 0x7f0e001b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 290
    .local v3, labelView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    if-eqz p3, :cond_1

    .line 292
    iget v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mMirrorLabelTopPadding:I

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 296
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_3

    .line 297
    if-eqz p3, :cond_2

    .line 298
    iget-object v4, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/sonyericsson/home/layer/AdapterHelper;->createMirrorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_0
    return-object v2

    .line 300
    :cond_2
    iget-object v4, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 303
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v5, Lcom/sonyericsson/home/layer/AdapterHelper$3;

    invoke-direct {v5, p0, v2, p3, v1}, Lcom/sonyericsson/home/layer/AdapterHelper$3;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;ZLandroid/widget/ImageView;)V

    invoke-virtual {v4, p1, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public getInfoViewType(Lcom/sonyericsson/home/data/Info;)I
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 109
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    move v0, v2

    .line 118
    :goto_0
    return v0

    .line 111
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    move v0, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    instance-of v0, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_2

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    instance-of v0, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v0, :cond_3

    move v0, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    instance-of v0, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v0, :cond_4

    move v0, v1

    .line 118
    goto :goto_0

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "shortcutInfo"
    .parameter "convertView"

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;Z)Landroid/view/View;
    .locals 9
    .parameter "shortcutInfo"
    .parameter "convertView"
    .parameter "mirrorEffect"

    .prologue
    const/4 v8, 0x0

    .line 203
    if-nez p2, :cond_0

    .line 204
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030017

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 207
    :cond_0
    move-object v3, p2

    .line 208
    .local v3, itemView:Landroid/view/View;
    sget v5, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v3, v5, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 210
    const v5, 0x7f0e001a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 211
    .local v2, iconView:Landroid/widget/ImageView;
    const v5, 0x7f0e001c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, badgeView:Landroid/view/View;
    const v5, 0x7f0e001b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 213
    .local v4, labelView:Landroid/widget/TextView;
    if-eqz p3, :cond_1

    .line 214
    iget v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mMirrorLabelTopPadding:I

    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 217
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v1

    .line 219
    .local v1, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_3

    .line 220
    if-eqz p3, :cond_2

    .line 221
    iget-object v5, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/sonyericsson/home/layer/AdapterHelper;->createMirrorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 246
    return-object p2

    .line 223
    :cond_2
    iget-object v5, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->prioritizeResource(Lcom/sonyericsson/home/data/Info;)V

    .line 229
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v6, Lcom/sonyericsson/home/layer/AdapterHelper$2;

    invoke-direct {v6, p0, v3, p3, v2}, Lcom/sonyericsson/home/layer/AdapterHelper$2;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;ZLandroid/widget/ImageView;)V

    invoke-virtual {v5, p1, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public unbindDrawables()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 356
    return-void
.end method
