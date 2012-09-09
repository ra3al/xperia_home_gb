.class public Lcom/sonyericsson/home/data/ActivityInfo;
.super Lcom/sonyericsson/home/data/Info;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/data/ActivityInfo$ActivityInfoFactory;
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .parameter "resolveInfo"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 73
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 1
    .parameter "activityInfo"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 100
    iget-object v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 86
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    .line 92
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 162
    :goto_0
    return v2

    .line 141
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 148
    .local v1, other:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 149
    iget-object v2, v1, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 150
    goto :goto_0

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 156
    iget-object v2, v1, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v4

    .line 157
    goto :goto_0

    .line 159
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 160
    goto :goto_0

    :cond_6
    move v2, v5

    .line 162
    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    const/16 v0, 0x1f

    .line 130
    .local v0, prime:I
    const/4 v1, 0x1

    .line 131
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 132
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    add-int v1, v2, v3

    .line 133
    return v1

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/data/ActivityInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
