.class public Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExtendedCheckBoxListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/home/ExtendedCheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public GetPosition(Lcom/sonyericsson/home/ExtendedCheckBox;)I
    .locals 3
    .parameter "item"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->getCount()I

    move-result v0

    .line 69
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 74
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_0
    return v1

    .line 71
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/home/ExtendedCheckBox;->compareTo(Lcom/sonyericsson/home/ExtendedCheckBox;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addItem(Lcom/sonyericsson/home/ExtendedCheckBox;)V
    .locals 1
    .parameter "it"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public deselectAll()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->notifyDataSetInvalidated()V

    .line 95
    return-void

    .line 90
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/ExtendedCheckBox;

    .line 91
    .local v0, cboxtxt:Lcom/sonyericsson/home/ExtendedCheckBox;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/ExtendedCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 111
    new-instance v1, Lcom/sonyericsson/home/ExtendedCheckBoxListView;

    iget-object v2, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/home/ExtendedCheckBoxListView;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/ExtendedCheckBox;)V

    return-object v1
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->notifyDataSetInvalidated()V

    .line 87
    return-void

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/ExtendedCheckBox;

    .line 83
    .local v0, cboxtxt:Lcom/sonyericsson/home/ExtendedCheckBox;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/ExtendedCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setChecked(ZI)V
    .locals 1
    .parameter "value"
    .parameter "position"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/ExtendedCheckBox;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/ExtendedCheckBox;->setChecked(Z)V

    .line 79
    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/home/ExtendedCheckBox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, lit:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/ExtendedCheckBox;>;"
    iput-object p1, p0, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->mItems:Ljava/util/List;

    .line 57
    return-void
.end method
