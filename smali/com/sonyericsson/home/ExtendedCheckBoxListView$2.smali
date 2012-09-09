.class Lcom/sonyericsson/home/ExtendedCheckBoxListView$2;
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
    iput-object p1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView$2;->this$0:Lcom/sonyericsson/home/ExtendedCheckBoxListView;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListView$2;->this$0:Lcom/sonyericsson/home/ExtendedCheckBoxListView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;->toggleCheckBoxState()V

    .line 93
    return-void
.end method
