.class public final enum Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;
.super Ljava/lang/Enum;
.source "FacebookProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/facebook/proxy/FacebookProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

.field public static final enum LARGE:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

.field public static final enum NORMAL:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

.field public static final enum SMALL:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

.field public static final enum SQUARE:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->SMALL:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    new-instance v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->NORMAL:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    new-instance v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->LARGE:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    new-instance v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->SQUARE:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    sget-object v1, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->SMALL:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->NORMAL:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->LARGE:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->SQUARE:Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->$VALUES:[Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->$VALUES:[Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    invoke-virtual {v0}, [Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/facebook/proxy/FacebookProxy$PictureType;

    return-object v0
.end method
