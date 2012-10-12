.class public Lcom/sonyericsson/home/PreferencesIconPackActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesIconPackActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesIconPackActivity;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 23
    #v11=(Null);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v9, 0x7f05000e

    #v9=(Integer);
    invoke-virtual {p0, v9}, Lcom/sonyericsson/home/PreferencesIconPackActivity;->addPreferencesFromResource(I)V

    .line 27
    const-string v9, "com.sonyericsson.home_preferences"

    .line 26
    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v9, v11}, Lcom/sonyericsson/home/PreferencesIconPackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 29
    .local v8, prefs:Landroid/content/SharedPreferences;
    #v8=(Reference,Landroid/content/SharedPreferences;);
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesIconPackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 31
    .local v6, localPackageManager:Landroid/content/pm/PackageManager;
    #v6=(Reference,Landroid/content/pm/PackageManager;);
    const-string v9, "iconPack"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/home/PreferencesIconPackActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    #v1=(Reference,Landroid/preference/Preference;);
    check-cast v1, Landroid/preference/ListPreference;

    .line 33
    .local v1, iconPack:Landroid/preference/ListPreference;
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v2, localArrayList1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v2=(Reference,Ljava/util/ArrayList;);
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v3, localArrayList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v3=(Reference,Ljava/util/ArrayList;);
    new-instance v4, Landroid/content/Intent;

    #v4=(UninitRef,Landroid/content/Intent;);
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, localIntent:Landroid/content/Intent;
    #v4=(Reference,Landroid/content/Intent;);
    const-string v9, "com.fede.launcher.THEME_ICONPACK"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v6, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 40
    .local v5, localList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v5=(Reference,Ljava/util/List;);
    new-instance v9, Landroid/content/Intent;

    .line 41
    #v9=(UninitRef,Landroid/content/Intent;);
    const-string v10, "org.adw.launcher.THEMES"

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    #v9=(Reference,Landroid/content/Intent;);
    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    new-instance v9, Landroid/content/Intent;

    .line 43
    #v9=(UninitRef,Landroid/content/Intent;);
    const-string v10, "com.sonyericsson.home.ICONPACK"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    #v9=(Reference,Landroid/content/Intent;);
    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    new-instance v9, Landroid/content/Intent;

    .line 45
    #v9=(UninitRef,Landroid/content/Intent;);
    const-string v10, "com.sonyericsson.hpro.ICONPACK"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    #v9=(Reference,Landroid/content/Intent;);
    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    const-string v9, "None"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v9, "none"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v9, "[Built-in] Xperia S"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesIconPackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v7=(Conflicted);
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    #v9=(Integer);
    if-lt v0, v9, :cond_0

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    #v9=(Reference,[Ljava/lang/String;);
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    #v9=(Integer);
    new-array v9, v9, [Ljava/lang/String;

    #v9=(Reference,[Ljava/lang/String;);
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 64
    const-string v9, "iconPack"

    const-string v10, "none"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 65
    return-void

    .line 52
    :cond_0
    #v9=(Integer);
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference,Ljava/lang/Object;);
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 53
    .local v7, localResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 54
    #v9=(Reference,Ljava/lang/CharSequence;);
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 56
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 55
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesIconPackActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 79
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RestartFast(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesIconPackActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 72
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 84
    const-string v0, "iconPack"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RequestRestart(Landroid/content/Context;)V

    .line 87
    :cond_0
    return-void
.end method
