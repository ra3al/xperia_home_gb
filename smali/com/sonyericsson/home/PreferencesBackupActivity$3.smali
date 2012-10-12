.class Lcom/sonyericsson/home/PreferencesBackupActivity$3;
.super Ljava/lang/Object;
.source "PreferencesBackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/PreferencesBackupActivity;->doBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

.field private final synthetic val$backupdir:Ljava/io/File;

.field private final synthetic val$datadir:Ljava/io/File;

.field private final synthetic val$sBackup:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/PreferencesBackupActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    iput-object p2, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$backupdir:Ljava/io/File;

    iput-object p3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$datadir:Ljava/io/File;

    iput-object p4, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$sBackup:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$3;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 118
    :try_start_0
    #v4=(One);
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$backupdir:Ljava/io/File;

    #v1=(Reference,Ljava/io/File;);
    invoke-static {v1}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$2(Ljava/io/File;)Z

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    iget-object v2, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$datadir:Ljava/io/File;

    #v2=(Reference,Ljava/io/File;);
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$backupdir:Ljava/io/File;

    #v3=(Reference,Ljava/io/File;);
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$3(Lcom/sonyericsson/home/PreferencesBackupActivity;Ljava/io/File;Ljava/io/File;)V

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$backupdir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 123
    #v1=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "Backup successfully created in:\n\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->val$sBackup:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    const/4 v3, 0x1

    .line 121
    #v3=(One);
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 139
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void

    .line 128
    :cond_0
    #v0=(Uninit);v1=(Boolean);v3=(Reference,Ljava/io/File;);
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 129
    #v1=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    const-string v2, "An error occurred while trying to create the backup. Please make sure the external storage is available"

    .line 130
    const/4 v3, 0x1

    .line 127
    #v3=(One);
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$3;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 136
    #v1=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    const-string v2, "An error occurred while trying to create the backup. Please make sure the external storage is available"

    .line 134
    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
