.class public Lcom/sonyericsson/home/ExtendedCheckBox;
.super Ljava/lang/Object;
.source "ExtendedCheckBox.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/home/ExtendedCheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mChecked:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "text"
    .parameter "checked"
    .parameter "actName"
    .parameter "icon"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mText:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mActivityName:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mText:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mChecked:Z

    .line 48
    iput-object p3, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mActivityName:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/home/ExtendedCheckBox;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mActivityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonyericsson/home/ExtendedCheckBox;->getActName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/ExtendedCheckBox;->compareTo(Lcom/sonyericsson/home/ExtendedCheckBox;)I

    move-result v0

    return v0
.end method

.method public getActName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mChecked:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setActName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mActivityName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mChecked:Z

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/home/ExtendedCheckBox;->mText:Ljava/lang/String;

    .line 65
    return-void
.end method
