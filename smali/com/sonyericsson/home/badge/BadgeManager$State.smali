.class final enum Lcom/sonyericsson/home/badge/BadgeManager$State;
.super Ljava/lang/Enum;
.source "BadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/badge/BadgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/home/badge/BadgeManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/home/badge/BadgeManager$State;

.field public static final enum INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

.field public static final enum UNINITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/sonyericsson/home/badge/BadgeManager$State;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/badge/BadgeManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/home/badge/BadgeManager$State;->UNINITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    new-instance v0, Lcom/sonyericsson/home/badge/BadgeManager$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/home/badge/BadgeManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/home/badge/BadgeManager$State;->INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/home/badge/BadgeManager$State;

    sget-object v1, Lcom/sonyericsson/home/badge/BadgeManager$State;->UNINITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/home/badge/BadgeManager$State;->INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/home/badge/BadgeManager$State;->$VALUES:[Lcom/sonyericsson/home/badge/BadgeManager$State;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/home/badge/BadgeManager$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/home/badge/BadgeManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/badge/BadgeManager$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/home/badge/BadgeManager$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonyericsson/home/badge/BadgeManager$State;->$VALUES:[Lcom/sonyericsson/home/badge/BadgeManager$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/home/badge/BadgeManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/home/badge/BadgeManager$State;

    return-object v0
.end method
