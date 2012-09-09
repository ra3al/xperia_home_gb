.class public Lcom/sonyericsson/home/badge/BadgeManager;
.super Ljava/lang/Object;
.source "BadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;,
        Lcom/sonyericsson/home/badge/BadgeManager$State;
    }
.end annotation


# static fields
.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "badges"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private mBadgeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mOnStartCompletedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/sonyericsson/home/badge/BadgeManager$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/sonyericsson/home/badge/BadgeManager$State;->UNINITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    iput-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mState:Lcom/sonyericsson/home/badge/BadgeManager$State;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeListeners:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    const-string v1, "badges"

    new-instance v2, Lcom/sonyericsson/home/badge/BadgeManager$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/badge/BadgeManager$1;-><init>(Lcom/sonyericsson/home/badge/BadgeManager;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/badge/BadgeManager;Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/badge/BadgeManager;->notifyListeners(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/badge/BadgeManager;Lcom/sonyericsson/home/badge/BadgeManager$State;)Lcom/sonyericsson/home/badge/BadgeManager$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mState:Lcom/sonyericsson/home/badge/BadgeManager$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method public static createBadgeBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "ctx"
    .parameter "badgeMessage"
    .parameter "sourceBitmap"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x8000

    .line 206
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    .local v1, badgeBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 208
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 209
    .local v4, w:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 211
    .local v3, h:I
    new-instance v0, Lcom/sonyericsson/home/badge/BadgeView;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/sonyericsson/home/badge/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    .local v0, badge:Lcom/sonyericsson/home/badge/BadgeView;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/badge/BadgeView;->setText(Ljava/lang/String;)V

    .line 213
    or-int v5, v7, v4

    or-int v6, v7, v3

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/home/badge/BadgeView;->measure(II)V

    .line 214
    invoke-virtual {v0}, Lcom/sonyericsson/home/badge/BadgeView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/sonyericsson/home/badge/BadgeView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v8, v8, v5, v6}, Lcom/sonyericsson/home/badge/BadgeView;->layout(IIII)V

    .line 216
    invoke-virtual {v0}, Lcom/sonyericsson/home/badge/BadgeView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/badge/BadgeView;->draw(Landroid/graphics/Canvas;)V

    .line 219
    return-object v1
.end method

.method private notifyListeners(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "message"

    .prologue
    .line 192
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;

    .line 193
    .local v1, listener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;
    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;->onBadgeChanged(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v1           #listener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;
    :cond_0
    return-void
.end method

.method private updateAndSave(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V
    .locals 0
    .parameter "info"
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/badge/BadgeManager;->updateBadge(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p3}, Lcom/sonyericsson/home/badge/BadgeManager;->updateStorage(Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    .line 172
    return-void
.end method

.method private updateBadge(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "message"

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/badge/BadgeManager;->notifyListeners(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V

    .line 182
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateStorage(Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 185
    new-instance v0, Lcom/sonyericsson/storage/Root;

    const-string v1, "badges"

    invoke-direct {v0, v1}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, root:Lcom/sonyericsson/storage/Root;
    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 187
    const-class v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    .line 189
    return-void
.end method


# virtual methods
.method public addBadgeListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public addOnStartCompletedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mState:Lcom/sonyericsson/home/badge/BadgeManager$State;

    sget-object v1, Lcom/sonyericsson/home/badge/BadgeManager$State;->INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    if-ne v0, v1, :cond_0

    .line 82
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBadgeMessage(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Intent;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)Z
    .locals 7
    .parameter "intent"
    .parameter "callback"

    .prologue
    const/4 v6, 0x1

    .line 141
    if-eqz p1, :cond_1

    .line 142
    const-string v5, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, activityName:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 146
    new-instance v1, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v1, v3, v0}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    const-string v5, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, message:Ljava/lang/String;
    const-string v5, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 150
    .local v4, showMessage:Z
    if-nez v4, :cond_0

    .line 151
    const/4 v2, 0x0

    .line 154
    :cond_0
    invoke-direct {p0, v1, v2, p2}, Lcom/sonyericsson/home/badge/BadgeManager;->updateAndSave(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnWriteCompletedCallback;)V

    move v5, v6

    .line 158
    .end local v0           #activityName:Ljava/lang/String;
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #showMessage:Z
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public removeBadgeListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
