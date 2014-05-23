.class Lcom/hashcode/safestrap/ics/SafestrapActivity$1;
.super Ljava/lang/Object;
.source "SafestrapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hashcode/safestrap/ics/SafestrapActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;


# direct methods
.method constructor <init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$1;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$1;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    const-string v3, "disclaimer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "accepted"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method
