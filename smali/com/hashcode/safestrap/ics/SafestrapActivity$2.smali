.class Lcom/hashcode/safestrap/ics/SafestrapActivity$2;
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
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$2;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 131
    return-void
.end method
