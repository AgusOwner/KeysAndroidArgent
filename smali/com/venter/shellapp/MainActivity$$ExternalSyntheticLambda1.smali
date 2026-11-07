.class public final synthetic Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/venter/shellapp/MainActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/venter/shellapp/MainActivity;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/venter/shellapp/MainActivity;

    iput-object p2, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda1;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/venter/shellapp/MainActivity;

    iget-object v1, p0, Lcom/venter/shellapp/MainActivity$$ExternalSyntheticLambda1;->f$1:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Lcom/venter/shellapp/MainActivity;->$r8$lambda$Pgyl3KYkpcyQNEy1fuZza5tciz4(Lcom/venter/shellapp/MainActivity;Landroid/app/AlertDialog;)V

    return-void
.end method
