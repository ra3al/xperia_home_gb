.class public Lcom/sonyericsson/home/widget/AdvWidgetManager;
.super Ljava/lang/Object;
.source "AdvWidgetManager.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
.implements Lcom/sonyericsson/util/ViewSnapshot$ViewRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/widget/AdvWidgetManager$1;,
        Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;,
        Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    }
.end annotation


# static fields
.field private static final DEF_SPAN_XY:[I = null

.field public static final EXTRA_ADVWIDGET_NAME:Ljava/lang/String; = "advWidgetName"

.field private static final TAG:Ljava/lang/String; = "AdvWidgetManager"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private final mPendingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/AdvWidgetInfo;",
            "Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetInfoDirty:Z

.field private mWidgetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->DEF_SPAN_XY:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter "activity"
    .parameter "host"
    .parameter "packageLoader"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mActivity:Landroid/app/Activity;

    .line 98
    iput-object p2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 99
    iput-object p3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 100
    invoke-virtual {p3, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 101
    const-class v0, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    invoke-static {v0, p0}, Lcom/sonyericsson/util/ViewSnapshot;->registerRenderer(Ljava/lang/Class;Lcom/sonyericsson/util/ViewSnapshot$ViewRenderer;)V

    .line 102
    return-void
.end method

.method private addPendingWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V
    .locals 3
    .parameter "info"
    .parameter "location"
    .parameter "callback"

    .prologue
    .line 327
    new-instance v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;-><init>(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V

    .line 328
    .local v0, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method private getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    .locals 6
    .parameter "info"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 128
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-nez v1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->createAdvWidgetProxy(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Ljava/lang/String;Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v0

    .line 131
    .local v0, proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    if-eqz v0, :cond_0

    .line 132
    new-instance v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;-><init>(Lcom/sonyericsson/home/widget/AdvWidgetManager$1;)V

    .line 133
    .restart local v1       #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iput-object v0, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v0           #proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :cond_0
    return-object v1
.end method

.method private getWidgetInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, widgetInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, widgetExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v9, 0x0

    .line 552
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 553
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 555
    iget-object v6, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 556
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 557
    .local v3, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 558
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sonyericsson.advancedwidget."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 559
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 560
    .local v5, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 561
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 565
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 566
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v1, extraBundle:Landroid/os/Bundle;
    const-string v6, "advWidgetName"

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #extraBundle:Landroid/os/Bundle;
    .end local v5           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    iput-boolean v9, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 575
    return-void
.end method


# virtual methods
.method public addNewWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .locals 7
    .parameter "packageName"
    .parameter "location"
    .parameter "callback"

    .prologue
    const/4 v6, 0x0

    .line 218
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 220
    .local v0, id:Ljava/util/UUID;
    new-instance v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 222
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v3

    .line 223
    .local v3, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-nez v3, :cond_0

    move-object v4, v6

    .line 246
    :goto_0
    return-object v4

    .line 227
    :cond_0
    iget-object v4, v3, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    iget-object v5, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->configure(Landroid/content/Context;)I

    move-result v2

    .line 228
    .local v2, ret:I
    packed-switch v2, :pswitch_data_0

    .line 245
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    move-object v4, v6

    .line 246
    goto :goto_0

    .line 231
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    move-object v4, v1

    .line 232
    goto :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0, v1, p2, p3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->addPendingWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V

    move-object v4, v6

    .line 236
    goto :goto_0

    .line 239
    :pswitch_2
    const/4 v4, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 240
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    move-object v4, v6

    .line 241
    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cleanupPendingWidgets()V
    .locals 4

    .prologue
    .line 317
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    .line 318
    .local v2, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 319
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 320
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 322
    .end local v1           #info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .end local v2           #pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 323
    return-void
.end method

.method public cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 298
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->remove()V

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    return-void
.end method

.method public configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "response"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 259
    .local v0, cacheEntry:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onConfigured(I)V

    .line 262
    :cond_0
    return-void
.end method

.method public customize(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "info"
    .parameter "settings"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v1

    .line 380
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-nez v1, :cond_0

    .line 381
    const/4 v2, 0x0

    .line 391
    :goto_0
    return v2

    .line 384
    :cond_0
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->customize(Landroid/os/Bundle;)Z

    move-result v0

    .line 385
    .local v0, success:Z
    if-eqz v0, :cond_1

    .line 386
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    :goto_1
    move v2, v0

    .line 391
    goto :goto_0

    .line 388
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_1
.end method

.method public defocus()V
    .locals 0

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onDefocus()V

    .line 441
    return-void
.end method

.method public defocusWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v0

    .line 503
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 504
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    .line 506
    :cond_0
    return-void
.end method

.method public focus()V
    .locals 0

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onFocus()V

    .line 433
    return-void
.end method

.method public focusWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v0

    .line 492
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 493
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onFocus()V

    .line 495
    :cond_0
    return-void
.end method

.method public getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "view"

    .prologue
    .line 583
    instance-of v0, p1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v0, :cond_0

    .line 584
    check-cast p1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    .line 586
    .restart local p1
    :cond_0
    const-string v0, "AdvWidgetManager"

    const-string v1, "getSnapshot() on non AdvWidgetRoot view"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpanXY(Lcom/sonyericsson/home/data/AdvWidgetInfo;)[I
    .locals 2
    .parameter "info"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v0

    .line 142
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-nez v0, :cond_0

    .line 143
    sget-object v1, Lcom/sonyericsson/home/widget/AdvWidgetManager;->DEF_SPAN_XY:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    move-object v1, p0

    .line 145
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getSpanXY()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getWidgetInfoExtras()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidgetInfos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;
    .locals 6
    .parameter "info"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v2

    .line 106
    .local v2, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    if-nez v3, :cond_0

    .line 108
    :try_start_0
    new-instance v3, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mActivity:Landroid/app/Activity;

    iget-object v5, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;-><init>(Landroid/content/Context;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;)V

    iput-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    if-nez v3, :cond_3

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030020

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, view:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 119
    iput-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    :cond_2
    move-object v3, v1

    .line 123
    .end local v1           #view:Landroid/view/View;
    :goto_1
    return-object v3

    .line 109
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 113
    .local v0, npe:Ljava/lang/NullPointerException;
    const-string v3, "AdvWidgetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create widget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0           #npe:Ljava/lang/NullPointerException;
    :cond_3
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    goto :goto_1
.end method

.method public hasPendingWidgets()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOpenGLAdvWidgets()V
    .locals 5

    .prologue
    .line 526
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 527
    .local v2, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 529
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .line 530
    .local v1, root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->hideWidget()V

    goto :goto_0

    .line 534
    .end local v1           #root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    .end local v2           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_1
    return-void
.end method

.method public onConfigured(Ljava/util/UUID;I)V
    .locals 5
    .parameter "id"
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 340
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    .line 341
    .local v0, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    if-nez v0, :cond_0

    .line 342
    const-string v1, "AdvWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending info not found for widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    if-ne p2, v4, :cond_1

    .line 351
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->callback:Lcom/sonyericsson/home/widget/OnWidgetConfigured;

    iget-object v2, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    iget-object v3, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->location:Lcom/sonyericsson/grid/GridLocation;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/home/widget/OnWidgetConfigured;->onWidgetConfigured(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    const/4 p2, -0x1

    .line 357
    :cond_1
    if-ne p2, v4, :cond_2

    .line 358
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 363
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0
.end method

.method protected onDefocus()V
    .locals 3

    .prologue
    .line 178
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 179
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    goto :goto_0

    .line 181
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 284
    const-class v2, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    invoke-static {v2}, Lcom/sonyericsson/util/ViewSnapshot;->unregisterRenderer(Ljava/lang/Class;)V

    .line 285
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 286
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 287
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    goto :goto_0

    .line 289
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method protected onFocus()V
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 185
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onFocus()V

    goto :goto_0

    .line 187
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 191
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 195
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 199
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 203
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 207
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 155
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    goto :goto_0

    .line 157
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 161
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    goto :goto_0

    .line 163
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method public onScrolled()V
    .locals 3

    .prologue
    .line 210
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 211
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onMoved()V

    goto :goto_0

    .line 213
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 172
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 173
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    goto :goto_0

    .line 175
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 167
    .local v1, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    goto :goto_0

    .line 169
    .end local v1           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_0
    return-void
.end method

.method public onWidgetPickerResult(Ljava/util/UUID;I)V
    .locals 4
    .parameter "id"
    .parameter "selected"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    .line 370
    .local v0, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    if-nez v0, :cond_0

    .line 371
    const-string v1, "AdvWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending info not found for widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->widgetSelected(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onPause()V

    .line 425
    return-void
.end method

.method public pauseWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v0

    .line 481
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 482
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 484
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onResume()V

    .line 416
    return-void
.end method

.method public resumeWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v0

    .line 469
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    .line 472
    :cond_0
    return-void
.end method

.method public showOpenGLAdvWidgets()V
    .locals 5

    .prologue
    .line 512
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 513
    .local v2, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v3, :cond_0

    .line 514
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 515
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->view:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .line 516
    .local v1, root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->showWidget()V

    goto :goto_0

    .line 520
    .end local v1           #root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    .end local v2           #widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onStart()V

    .line 399
    return-void
.end method

.method public startWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v0

    .line 448
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 449
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    .line 451
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onStop()V

    .line 407
    return-void
.end method

.method public stopWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    move-result-object v0

    .line 458
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 459
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 461
    :cond_0
    return-void
.end method

.method public widgetRemoved(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 151
    return-void
.end method

.method public widgetSelected(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "selected"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;

    .line 272
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCacheEntry;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onWidgetPicked(I)V

    .line 275
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 276
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 278
    :cond_1
    return-void
.end method
