.class public Lcom/sonyericsson/home/PreferencesBackupActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesBackupActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mBackupPref:Landroid/preference/Preference;

.field private mRestorePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    return-void
.end method

.method static synthetic access$0(Lcom/sonyericsson/home/PreferencesBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->doBackup()V

    return-void
.end method

.method static synthetic access$1(Lcom/sonyericsson/home/PreferencesBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->doRestore()V

    return-void
.end method

.method static synthetic access$2(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-static {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    #v0=(Boolean);
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

    #v6=(Boolean);
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
    #v1=(Reference,[Ljava/lang/String;);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    array-length v6, v1

    #v6=(Integer);
    if-lt v2, v6, :cond_1

    .line 85
    .end local v1           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 68
    .restart local v1       #children:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_1
    #v0=(Uninit);v1=(Reference,[Ljava/lang/String;);v2=(Integer);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    new-instance v6, Ljava/io/File;

    #v6=(UninitRef,Ljava/io/File;);
    aget-object v7, v1, v2

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #v6=(Reference,Ljava/io/File;);
    new-instance v7, Ljava/io/File;

    .line 69
    #v7=(UninitRef,Ljava/io/File;);
    aget-object v8, v1, v2

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, p2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    #v7=(Reference,Ljava/io/File;);
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/home/PreferencesBackupActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v1           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    #v1=(Uninit);v2=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);
    new-instance v3, Ljava/io/FileInputStream;

    #v3=(UninitRef,Ljava/io/FileInputStream;);
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v3, in:Ljava/io/InputStream;
    #v3=(Reference,Ljava/io/FileInputStream;);
    new-instance v5, Ljava/io/FileOutputStream;

    #v5=(UninitRef,Ljava/io/FileOutputStream;);
    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v5, out:Ljava/io/OutputStream;
    #v5=(Reference,Ljava/io/FileOutputStream;);
    const/16 v6, 0x400

    #v6=(PosShort);
    new-array v0, v6, [B

    .line 79
    .local v0, buf:[B
    :goto_2
    #v0=(Reference,[B);v4=(Conflicted);
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, len:I
    #v4=(Integer);
    if-gtz v4, :cond_3

    .line 82
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 80
    :cond_3
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, children:[Ljava/lang/String;
    #v0=(Reference,[Ljava/lang/String;);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    array-length v3, v0

    #v3=(Integer);
    if-lt v1, v3, :cond_1

    .line 97
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    :goto_1
    #v3=(Boolean);
    return v3

    .line 91
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_1
    #v0=(Reference,[Ljava/lang/String;);v1=(Integer);v3=(Integer);
    new-instance v3, Ljava/io/File;

    #v3=(UninitRef,Ljava/io/File;);
    aget-object v4, v0, v1

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #v3=(Reference,Ljava/io/File;);
    invoke-static {v3}, Lcom/sonyericsson/home/PreferencesBackupActivity;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    .line 92
    .local v2, success:Z
    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 93
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1

    .line 90
    :cond_2
    #v3=(Reference,Ljava/io/File;);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doBackup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 102
    :try_start_0
    #v7=(One);
    new-instance v1, Ljava/io/File;

    #v1=(UninitRef,Ljava/io/File;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "/data/data/"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, datadir:Ljava/io/File;
    #v1=(Reference,Ljava/io/File;);
    new-instance v0, Ljava/io/File;

    .line 104
    #v0=(UninitRef,Ljava/io/File;);
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 105
    const-string v6, "xperia_launcher_backup"

    .line 103
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v0, backupdir:Ljava/io/File;
    #v0=(Reference,Ljava/io/File;);
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, sBackup:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #v2=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v2, dlgAlert:Landroid/app/AlertDialog$Builder;
    #v2=(Reference,Landroid/app/AlertDialog$Builder;);
    const-string v5, "An older backup seems to be present, do you want to overwrite it?"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v5, "Overwriting old backup..."

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    const-string v5, "YES"

    .line 114
    new-instance v6, Lcom/sonyericsson/home/PreferencesBackupActivity$3;

    #v6=(UninitRef,Lcom/sonyericsson/home/PreferencesBackupActivity$3;);
    invoke-direct {v6, p0, v0, v1, v4}, Lcom/sonyericsson/home/PreferencesBackupActivity$3;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 113
    #v6=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$3;);
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    const-string v5, "NO"

    .line 142
    new-instance v6, Lcom/sonyericsson/home/PreferencesBackupActivity$4;

    #v6=(UninitRef,Lcom/sonyericsson/home/PreferencesBackupActivity$4;);
    invoke-direct {v6, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$4;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    .line 141
    #v6=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$4;);
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    #v5=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 173
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    .end local v2           #dlgAlert:Landroid/app/AlertDialog$Builder;
    .end local v4           #sBackup:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return-void

    .line 150
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    .restart local v4       #sBackup:Ljava/lang/String;
    :cond_0
    #v0=(Reference,Ljava/io/File;);v1=(Reference,Ljava/io/File;);v2=(Uninit);v3=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Boolean);v6=(Reference,Ljava/lang/String;);
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "Backup successfully created in:\n\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    const/4 v6, 0x1

    .line 152
    #v6=(One);
    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 155
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    .end local v4           #sBackup:Ljava/lang/String;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v3

    .line 167
    .local v3, localException:Ljava/lang/Exception;
    #v3=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const-string v5, "An error occurred while trying to create the backup. Please make sure the external storage is available"

    .line 168
    #v5=(Reference,Ljava/lang/String;);
    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 171
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    .end local v3           #localException:Ljava/lang/Exception;
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    .restart local v4       #sBackup:Ljava/lang/String;
    :cond_1
    :try_start_1
    #v0=(Reference,Ljava/io/File;);v1=(Reference,Ljava/io/File;);v2=(Uninit);v3=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Boolean);v6=(Reference,Ljava/lang/String;);
    const-string v5, "An error occurred while trying to create the backup. Please make sure the external storage is available"

    .line 160
    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x1

    .line 157
    #v6=(One);
    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 160
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :cond_2
    #v5=(Boolean);v6=(Reference,Ljava/lang/String;);
    const-string v5, "There is nothing to backup!"

    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x1

    #v6=(One);
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

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, dlgAlert:Landroid/app/AlertDialog$Builder;
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const-string v1, "All current settings will be replaced by those from the backup!\n\nDo you want to continue?"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    const-string v1, "Restoring backup..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    const-string v1, "YES"

    .line 181
    new-instance v2, Lcom/sonyericsson/home/PreferencesBackupActivity$5;

    #v2=(UninitRef,Lcom/sonyericsson/home/PreferencesBackupActivity$5;);
    invoke-direct {v2, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$5;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    .line 180
    #v2=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$5;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    const-string v1, "NO"

    new-instance v2, Lcom/sonyericsson/home/PreferencesBackupActivity$6;

    #v2=(UninitRef,Lcom/sonyericsson/home/PreferencesBackupActivity$6;);
    invoke-direct {v2, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$6;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    #v2=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$6;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #v1=(Reference,Landroid/app/AlertDialog;);
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 224
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

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->addPreferencesFromResource(I)V

    .line 39
    const-string v0, "settingsBackup"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mBackupPref:Landroid/preference/Preference;

    .line 40
    const-string v0, "settingsRestore"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mRestorePref:Landroid/preference/Preference;

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mBackupPref:Landroid/preference/Preference;

    .line 43
    new-instance v1, Lcom/sonyericsson/home/PreferencesBackupActivity$1;

    #v1=(UninitRef,Lcom/sonyericsson/home/PreferencesBackupActivity$1;);
    invoke-direct {v1, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$1;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    #v1=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$1;);
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity;->mRestorePref:Landroid/preference/Preference;

    .line 50
    new-instance v1, Lcom/sonyericsson/home/PreferencesBackupActivity$2;

    #v1=(UninitRef,Lcom/sonyericsson/home/PreferencesBackupActivity$2;);
    invoke-direct {v1, p0}, Lcom/sonyericsson/home/PreferencesBackupActivity$2;-><init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    #v1=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$2;);
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 238
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RestartFast(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 231
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 243
    return-void
.end method
