.class public Lcom/sonyericsson/home/PreferencesAppearanceActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesAppearanceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private restarter:Lcom/sonyericsson/home/Restarter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v3, Lcom/sonyericsson/home/Restarter;

    invoke-direct {v3}, Lcom/sonyericsson/home/Restarter;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    .line 19
    const v3, 0x7f050009

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->addPreferencesFromResource(I)V

    .line 21
    const-string v3, "com.sonyericsson.home_preferences"

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "staticWallpaper"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 24
    .local v2, staticWallpaper:Landroid/preference/CheckBoxPreference;
    const-string v3, "staticWallpaper"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 26
    const-string v3, "textInStage"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 27
    .local v1, stageText:Landroid/preference/CheckBoxPreference;
    const-string v3, "textInStage"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 48
    const-string v0, "textInStage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "staticWallpaper"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesAppearanceActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/Restarter;->Restart(Landroid/content/Context;)V

    .line 52
    :cond_1
    return-void
.end method
