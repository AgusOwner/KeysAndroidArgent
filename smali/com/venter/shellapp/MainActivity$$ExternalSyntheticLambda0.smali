.class public final synthetic Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Lcom/venter/shellapp/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lcom/venter/shellapp/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda0;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda0;->f$1:Lcom/venter/shellapp/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda0;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda0;->f$1:Lcom/venter/shellapp/MainActivity;

    invoke-static {v0, v1}, Lcom/venter/shellapp/MainActivity;->$r8$lambda$xUjgJpcouXeDomnhfUUgwEWTJvY(Landroid/app/AlertDialog;Lcom/venter/shellapp/MainActivity;)V

    return-void
.end method
