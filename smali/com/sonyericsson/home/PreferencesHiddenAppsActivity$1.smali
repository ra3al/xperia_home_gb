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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    .line 56
    const-string v6, "old_string_btn"

    #v6=(Reference,Ljava/lang/String;);
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v7=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mOldKeyValue:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v0=(Conflicted);v3=(Integer);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v6=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    iget-object v6, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->riList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    #v6=(Integer);
    if-lt v3, v6, :cond_0

    .line 71
    const-string v6, "new_string_btn"

    #v6=(Reference,Ljava/lang/String;);
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v6, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mOldKeyValue:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_3

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    .local v1, ctx:Landroid/content/Context;
    #v1=(Reference,Landroid/content/Context;);
    const-string v6, "com.sonyericsson.home_preferences"

    #v6=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    .line 74
    #v7=(Null);
    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 76
    .local v5, prefs:Landroid/content/SharedPreferences;
    #v5=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 77
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    #v2=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v6, "hiddenActivities"

    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v7=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    invoke-static {v1}, Lcom/ra3al/restarter/Restarter;->RequestRestart(Landroid/content/Context;)V

    .line 80
    invoke-static {v1}, Lcom/ra3al/restarter/Restarter;->RestartFast(Landroid/content/Context;)V

    .line 84
    .end local v1           #ctx:Landroid/content/Context;
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return-void

    .line 58
    :cond_0
    #v1=(Uninit);v2=(Uninit);v5=(Uninit);v6=(Integer);
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v6=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    iget-object v6, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/sonyericsson/home/ExtendedCheckBox;->getChecked()Z

    move-result v0

    .line 59
    .local v0, bOn:Z
    #v0=(Boolean);
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v6, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->checkboxes:[Lcom/sonyericsson/home/ExtendedCheckBox;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/sonyericsson/home/ExtendedCheckBox;->getActName()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, key:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_2

    .line 61
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v6, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 62
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v6=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v8, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v8=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    iget-object v8, v8, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    .line 57
    :cond_1
    :goto_2
    #v6=(Conflicted);v8=(Conflicted);
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 65
    :cond_2
    #v6=(Reference,Lcom/sonyericsson/home/ExtendedCheckBox;);
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v6, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 66
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v6=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v9, "|"

    #v9=(Reference,Ljava/lang/String;);
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    .line 67
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    iget-object v7, v7, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->mNewKeyValue:Ljava/lang/String;

    goto :goto_2

    .line 82
    .end local v0           #bOn:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    #v0=(Conflicted);v4=(Conflicted);v6=(Boolean);v8=(Conflicted);v9=(Conflicted);
    iget-object v6, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    #v6=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;);
    invoke-virtual {v6}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;->finish()V

    goto :goto_1
.end method
