.class Lcom/sonyericsson/home/ExtendedCheckBoxListView$1;
.super Ljava/lang/Object;
.source "ExtendedCheckBoxListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/ExtendedCheckBoxListView;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/ExtendedCheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/ExtendedCheckBoxListView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/ExtendedCheckBoxListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView$1;->this$0:Lcom/sonyericsson/home/ExtendedCheckBoxListView;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView$1;->this$0:Lcom/sonyericsson/home/ExtendedCheckBoxListView;

    invoke-static {v0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->access$0(Lcom/sonyericsson/home/ExtendedCheckBoxListView;)Lcom/sonyericsson/home/ExtendedCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView$1;->this$0:Lcom/sonyericsson/home/ExtendedCheckBoxListView;

    invoke-virtual {v1}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->getCheckBoxState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/ExtendedCheckBox;->setChecked(Z)V

    return-void
.end method
