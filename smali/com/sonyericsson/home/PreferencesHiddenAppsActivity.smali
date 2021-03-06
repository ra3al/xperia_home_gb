.class public Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;
.super Landroid/app/ListActivity;
.source "PreferencesHiddenAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;
    }
.end annotation


# instance fields
.field checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

.field mAppListAdapter:Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;

.field mNewKeyValue:Ljava/lang/String;

.field mOldKeyValue:Ljava/lang/String;

.field mSave:Landroid/widget/Button;

.field riList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    return-void
.end method

.method private buildAppList()V
    .locals 10

    .prologue
    .line 89
    new-instance v4, Landroid/content/Intent;

    #v4=(UninitRef,Landroid/content/Intent;);
    const-string v8, "android.intent.action.MAIN"

    #v8=(Reference,Ljava/lang/String;);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    .local v4, localIntent:Landroid/content/Intent;
    #v4=(Reference,Landroid/content/Intent;);
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 92
    .local v5, localPackageManager:Landroid/content/pm/PackageManager;
    #v5=(Reference,Landroid/content/pm/PackageManager;);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    #v8=(Reference,Ljava/util/List;);
    iput-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    .line 93
    new-instance v3, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;

    #v3=(UninitRef,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;);
    invoke-direct {v3, p0, v5}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;-><init>(Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;Landroid/content/pm/PackageManager;)V

    .line 95
    .local v3, localApplicationInfoComparator:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;
    #v3=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    #v8=(Integer);
    new-array v8, v8, [Lcom/sonyericsson/home/ExtendedCheckBox;

    #v8=(Reference,[Lcom/sonyericsson/home/ExtendedCheckBox;);
    iput-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

    .line 99
    new-instance v8, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;

    #v8=(UninitRef,Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;);
    invoke-direct {v8, p0}, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;-><init>(Landroid/content/Context;)V

    #v8=(Reference,Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;);
    iput-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mAppListAdapter:Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Reference,Lcom/sonyericsson/home/ExtendedCheckBox;);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    #v8=(Integer);
    if-lt v1, v8, :cond_0

    .line 110
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mAppListAdapter:Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;

    #v8=(Reference,Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;);
    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    return-void

    .line 101
    :cond_0
    #v8=(Integer);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    #v8=(Reference,Ljava/util/List;);
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 102
    .local v6, name:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mOldKeyValue:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 103
    .local v0, checked:Z
    #v0=(Boolean);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 104
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, title:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 107
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    #v2=(Reference,Landroid/graphics/drawable/Drawable;);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

    new-instance v9, Lcom/sonyericsson/home/ExtendedCheckBox;

    #v9=(UninitRef,Lcom/sonyericsson/home/ExtendedCheckBox;);
    invoke-direct {v9, v7, v0, v6, v2}, Lcom/sonyericsson/home/ExtendedCheckBox;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    #v9=(Reference,Lcom/sonyericsson/home/ExtendedCheckBox;);
    aput-object v9, v8, v1

    .line 108
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mAppListAdapter:Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;

    iget-object v9, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/ExtendedCheckBoxListAdapter;->addItem(Lcom/sonyericsson/home/ExtendedCheckBox;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030022

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->setContentView(I)V

    .line 44
    const-string v0, "App Drawer: Hidden Applications"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const-string v0, "com.sonyericsson.home_preferences"

    const/4 v1, 0x0

    .line 46
    #v1=(Null);
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v1, "hiddenActivities"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "com.example.android.apis.ApiDemos"

    .line 47
    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mOldKeyValue:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mOldKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->buildAppList()V

    .line 53
    const v0, 0x7f0e0045

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mSave:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mSave:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;

    #v1=(UninitRef,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;);
    invoke-direct {v1, p0}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;-><init>(Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;)V

    #v1=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 130
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 131
    return-void
.end method
