.class public Lcom/sonyericsson/home/PreferencesBackupActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesBackupActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mBackupPref:Landroid/preference/Preference;

.field private mRestarter:Lcom/sonyericsson/home/Restarter;

.field private mRestorePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sonyericsson/home/PreferencesBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->doBackup()V

    return-void
.end method

.method static synthetic access$1(Lcom/sonyericsson/home/PreferencesBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->doRestore()V

    return-void
.end method

.method static synthetic access$2(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-static {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/sonyericsson/home/PreferencesBackupActivity;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/PreferencesBackupActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$4(Lcom/sonyericsson/home/PreferencesBackupActivity;)Lcom/sonyericsson/home/Restarter;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mRestarter:Lcom/sonyericsson/home/Restarter;

    return-object v0
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .parameter "sourceLocation"
    .parameter "targetLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, children:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 85
    .end local v1           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    return-void

    .line 68
    .restart local v1       #children:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_1
    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v2

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    new-instance v7, Ljava/io/File;

    aget-object v8, v1, v2

    invoke-direct {v7, p2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/home/PreferencesBackupActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v1           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v3, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v5, out:Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 79
    .local v0, buf:[B
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-gtz v4, :cond_3

    .line 82
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 80
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 96
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    :goto_1
    return v3

    .line 90
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_1
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sonyericsson/home/PreferencesBackupActivity;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    .line 91
    .local v2, success:Z
    if-nez v2, :cond_2

    .line 92
    const/4 v3, 0x0

    goto :goto_1

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doBackup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 102
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, datadir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "xperia_launcher_backup"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v0, backupdir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, sBackup:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v2, dlgAlert:Landroid/app/AlertDialog$Builder;
    const-string v5, "An older backup seems to be present, do you want to overwrite it?"

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v5, "Overwriting old backup..."

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    const-string v5, "YES"

    .line 114
    new-instance v6, Lcom/sonyericsson/home/PreferencesBackupActivity$3;

    invoke-direct {v6, p0, v0, v1, v4}, Lcom/sonyericsson/home/PreferencesBackupActivity$3;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v5, "NO"

    .line 140
    new-instance v6, Lcom/sonyericsson/home/PreferencesBackupActivity$4;

    invoke-direct {v6, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$4;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    .line 139
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 173
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    .end local v2           #dlgAlert:Landroid/app/AlertDialog$Builder;
    .end local v4           #sBackup:Ljava/lang/String;
    :goto_0
    return-void

    .line 152
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    .restart local v4       #sBackup:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Backup successfully created in:\n\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    .end local v4           #sBackup:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 170
    .local v3, localException:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const-string v5, "An error occurred while trying to create the backup. Please make sure the external storage is available"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    .end local v3           #localException:Ljava/lang/Exception;
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    .restart local v4       #sBackup:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "An error occurred while trying to create the backup. Please make sure the external storage is available"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    :cond_2
    const-string v5, "There is nothing to backup!"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private doRestore()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, dlgAlert:Landroid/app/AlertDialog$Builder;
    const-string v1, "All current settings will be replaced by those from the backup!\n\nDo you want to continue?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    const-string v1, "Restoring backup..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    const-string v1, "YES"

    .line 181
    new-instance v2, Lcom/sonyericsson/home/PreferencesBackupActivity$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$5;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    const-string v1, "NO"

    .line 217
    new-instance v2, Lcom/sonyericsson/home/PreferencesBackupActivity$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$6;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 227
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->addPreferencesFromResource(I)V

    .line 39
    new-instance v0, Lcom/sonyericsson/home/Restarter;

    const-string v1, "Backup restored successfully.\n\nThe application will be restarted in order to apply the new settings"

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/Restarter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mRestarter:Lcom/sonyericsson/home/Restarter;

    .line 41
    const-string v0, "settingsBackup"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mBackupPref:Landroid/preference/Preference;

    .line 42
    const-string v0, "settingsRestore"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mRestorePref:Landroid/preference/Preference;

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mBackupPref:Landroid/preference/Preference;

    new-instance v1, Lcom/sonyericsson/home/PreferencesBackupActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$1;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mRestorePref:Landroid/preference/Preference;

    new-instance v1, Lcom/sonyericsson/home/PreferencesBackupActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$2;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 242
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 234
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 246
    return-void
.end method
