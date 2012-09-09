.class Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;
.super Ljava/lang/Object;
.source "PreferencesHiddenAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "arg0"

    .prologue
    .line 57
    const-string v7, "old_string_btn"

    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, v8, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mOldKeyValue:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 78
    const-string v7, "new_string_btn"

    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, v8, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mOldKeyValue:Ljava/lang/String;

    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, v8, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    .local v1, ctx:Landroid/content/Context;
    const-string v7, "com.sonyericsson.home_preferences"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 83
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 84
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "hiddenActivities"

    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, v8, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    new-instance v6, Lcom/sonyericsson/home/Restarter;

    invoke-direct {v6}, Lcom/sonyericsson/home/Restarter;-><init>()V

    .line 87
    .local v6, res:Lcom/sonyericsson/home/Restarter;
    invoke-virtual {v6, v1}, Lcom/sonyericsson/home/Restarter;->Restart(Landroid/content/Context;)V

    .line 93
    .end local v1           #ctx:Landroid/content/Context;
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v6           #res:Lcom/sonyericsson/home/Restarter;
    :goto_1
    return-void

    .line 60
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/sonyericsson/home/ExtendedCheckBox;->getChecked()Z

    move-result v0

    .line 61
    .local v0, bOn:Z
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/sonyericsson/home/ExtendedCheckBox;->getActName()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, key:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 64
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v9, v9, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    .line 58
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 71
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, v8, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "|"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    .line 74
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v8, v8, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    goto :goto_2

    .line 91
    .end local v0           #bOn:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->finish()V

    goto :goto_1
.end method
