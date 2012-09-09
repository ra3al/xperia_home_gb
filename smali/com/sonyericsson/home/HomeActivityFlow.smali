.class Lcom/sonyericsson/home/HomeActivityFlow;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;,
        Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;,
        Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;,
        Lcom/sonyericsson/home/HomeActivityFlow$Presenter;
    }
.end annotation


# static fields
.field public static final RESULT_FOLDER_NAME:Ljava/lang/String; = "result_folder_name"


# instance fields
.field private mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/HomeActivityFlow$Presenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    return-object v0
.end method


# virtual methods
.method public addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 2
    .parameter "activityInfo"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public addAdvWidget(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addAdvWidget(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V
    .locals 3
    .parameter "listener"
    .parameter "text"

    .prologue
    .line 203
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$1;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;)V

    .line 223
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v2, 0x7f07001d

    invoke-interface {v1, v0, v2, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;)V

    .line 225
    return-void
.end method

.method public addShortcut(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addShortcut(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public addWidget(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 186
    if-eqz p1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addWidget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    move v0, v2

    .line 193
    :goto_0
    return v0

    .line 191
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 193
    goto :goto_0
.end method

.method public confirmFolderCreate(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V
    .locals 3
    .parameter "listener"
    .parameter "text"

    .prologue
    .line 294
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$4;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$4;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;)V

    .line 306
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v2, 0x7f07001d

    invoke-interface {v1, v0, v2, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;)V

    .line 308
    return-void
.end method

.method public onDeleteDrop(Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 3
    .parameter "infoGroupInterface"
    .parameter "info"
    .parameter "dropListener"

    .prologue
    .line 254
    instance-of v1, p2, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sonyericsson/home/data/InfoGroup;

    .end local p2
    invoke-interface {p1, p2}, Lcom/sonyericsson/home/data/InfoGroupInterface;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v1

    if-lez v1, :cond_0

    .line 255
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$2;

    invoke-direct {v0, p0, p3}, Lcom/sonyericsson/home/HomeActivityFlow$2;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 265
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    .line 269
    .end local v0           #onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const/4 v2, 0x1

    invoke-interface {v1, p3, v2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->finishDeleteDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V

    goto :goto_0
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V
    .locals 4
    .parameter "info"
    .parameter "layer"
    .parameter "location"

    .prologue
    .line 228
    instance-of v2, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    check-cast p1, Lcom/sonyericsson/home/data/InfoGroup;

    .end local p1
    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;I)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 234
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v2, p2, p3}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v1

    .line 236
    .local v1, sourceBounds:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v2, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v2, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->overrideTransition(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v3, 0x7f070017

    invoke-interface {v2, v3}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    goto :goto_0
.end method

.method public onNoUninstallableItems()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070027

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 318
    return-void
.end method

.method public setFolderName(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;)V
    .locals 3
    .parameter "infoGroup"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 273
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/sonyericsson/home/HomeActivityFlow$3;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;)V

    .line 289
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v2, 0x7f07001a

    invoke-interface {v1, v0, v2, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;)V

    .line 291
    return-void
.end method

.method public startActivitySafelyForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->startActivitySafelyForResult(Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070017

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public uninstall(Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 312
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .local v1, uninstallIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v2, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->startActivitySafely(Landroid/content/Intent;)Z

    .line 314
    return-void
.end method
