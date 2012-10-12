.class public Lcom/sonyericsson/home/PreferencesAppearanceActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesAppearanceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field mCurrentValues_bool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesAppearanceActivity;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 20
    #v3=(Null);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f050009

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->addPreferencesFromResource(I)V

    .line 24
    const-string v2, "com.sonyericsson.home_preferences"

    .line 23
    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 26
    .local v1, prefs:Landroid/content/SharedPreferences;
    #v1=(Reference,Landroid/content/SharedPreferences;);
    const-string v2, "staticWallpaper"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    #v0=(Reference,Landroid/preference/Preference;);
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 27
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    const-string v2, "staticWallpaper"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 29
    const-string v2, "textInStage"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #cb:Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 30
    .restart local v0       #cb:Landroid/preference/CheckBoxPreference;
    const-string v2, "textInStage"

    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 31
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RestartFast(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 38
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 50
    const-string v0, "textInStage"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "staticWallpaper"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RequestRestart(Landroid/content/Context;)V

    .line 53
    :cond_1
    return-void
.end method
