.class public final Lcom/sonyericsson/home/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final IconPreferenceScreen:[I

.field public static final IconPreferenceScreen_icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 62
    const/high16 v2, 0x7f01

    aput v2, v0, v1

    .line 61
    sput-object v0, Lcom/sonyericsson/home/R$styleable;->IconPreferenceScreen:[I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
