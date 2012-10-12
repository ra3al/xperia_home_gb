.class Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;
.super Ljava/lang/Object;
.source "PreferencesHiddenAppsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mPm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter
    .parameter "arg2"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;->this$0:Lcom/sonyericsson/home/PreferencesHiddenAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    #p0=(Reference,Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;);
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    #v0=(Reference,Ljava/text/Collator;);
    iput-object v0, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;->mCollator:Ljava/text/Collator;

    .line 118
    iput-object p2, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 119
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .parameter "paramResolveInfo1"
    .parameter "paramResolveInfo2"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;->mCollator:Ljava/text/Collator;

    #v0=(Reference,Ljava/text/Collator;);
    iget-object v1, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    #v1=(Reference,Landroid/content/pm/PackageManager;);
    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    #v2=(Reference,Landroid/content/pm/PackageManager;);
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/PreferencesHiddenAppsActivity$ApplicationInfoComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
