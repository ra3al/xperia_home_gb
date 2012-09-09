.class public abstract Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;
.super Lcom/sonyericsson/advancedwidget/framework/Stub;
.source "AdvWidgetHost.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvWidgetHost"


# instance fields
.field private mId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFullScreenEffect(Landroid/view/View;)V
.end method

.method protected call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "funcName"
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 116
    const-string v6, "addFullScreenEffect"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->addFullScreenEffect(Landroid/view/View;)V

    move-object v6, v9

    .line 140
    :goto_0
    return-object v6

    .line 119
    .restart local p2
    :cond_0
    const-string v6, "removeFullScreenEffect"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->removeFullScreenEffect(Landroid/view/View;)V

    move-object v6, v9

    .line 121
    goto :goto_0

    .line 122
    .restart local p2
    :cond_1
    const-string v6, "onConfigured"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->onConfigured(I)V

    move-object v6, v9

    .line 124
    goto :goto_0

    .line 125
    .restart local p2
    :cond_2
    const-string v6, "showWidgetPicker"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 127
    .local v2, p:[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v3, v2, v6

    check-cast v3, Ljava/lang/String;

    .line 128
    .local v3, pn:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v5, v2, v6

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, t:Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v6, v2, v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 130
    .local v4, sa:[Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v6, v2, v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 131
    .local v1, da:[Ljava/lang/String;
    invoke-virtual {p0, v3, v5, v4, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->showWidgetPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v6, v9

    .line 132
    goto :goto_0

    .line 133
    .end local v1           #da:[Ljava/lang/String;
    .end local v2           #p:[Ljava/lang/Object;
    .end local v3           #pn:Ljava/lang/String;
    .end local v4           #sa:[Ljava/lang/String;
    .end local v5           #t:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "setId"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    check-cast p2, Ljava/util/UUID;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->mId:Ljava/util/UUID;

    move-object v6, v9

    .line 135
    goto :goto_0

    .line 136
    .restart local p2
    :cond_4
    const-string v6, "getFrameworkVersion"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->getFrameworkVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 139
    :cond_5
    const-string v6, "AdvWidgetHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown function: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 140
    goto/16 :goto_0
.end method

.method public final getFrameworkVersion()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x122

    return v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public abstract onConfigured(I)V
.end method

.method public abstract removeFullScreenEffect(Landroid/view/View;)V
.end method

.method public abstract showWidgetPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method
