.class public Lcom/sonyericsson/home/layer/folder/FolderDialog;
.super Landroid/app/AlertDialog;
.source "FolderDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;
    }
.end annotation


# static fields
.field public static final RESULT_FOLDER_ICON:Ljava/lang/String; = "result_folder_icon"

.field public static final RESULT_FOLDER_NAME:Ljava/lang/String; = "result_folder_name"


# instance fields
.field private mDefaultFolderName:Ljava/lang/String;

.field private mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

.field private mEditText:Landroid/widget/EditText;

.field private mFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setIcon(I)V

    .line 80
    const/4 v0, -0x1

    const v1, 0x7f070024

    invoke-direct {p0, v0, v1, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 81
    const/4 v0, -0x2

    const v1, 0x7f070025

    invoke-direct {p0, v0, v1, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 82
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 87
    .local v2, viewSpacing:I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setView(Landroid/view/View;IIII)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDefaultFolderName:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 92
    return-void
.end method

.method private setButton(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "which"
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p3}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 158
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 145
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogNegative()V

    .line 176
    :cond_0
    return-void
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    packed-switch p2, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 122
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "result_folder_name"

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 127
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 131
    .end local v0           #result:Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogNegative()V

    .line 134
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onClose(Landroid/app/Dialog;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onNameChanged(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public setDialogListener(Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    .line 166
    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 2
    .parameter "titleResource"
    .parameter "name"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setTitle(I)V

    .line 108
    if-eqz p2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->show()V

    .line 116
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDefaultFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
