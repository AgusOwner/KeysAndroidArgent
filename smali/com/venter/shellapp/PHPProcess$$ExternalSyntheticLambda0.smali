.class public final synthetic Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/venter/shellapp/PHPProcess;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/io/File;

.field public final synthetic f$6:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/venter/shellapp/PHPProcess;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$0:Lcom/venter/shellapp/PHPProcess;

    iput-object p2, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    iput p4, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$5:Ljava/io/File;

    iput-object p7, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$6:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$0:Lcom/venter/shellapp/PHPProcess;

    iget-object v1, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    iget v3, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$5:Ljava/io/File;

    iget-object v6, p0, Lcom/venter/shellapp/PHPProcess$$ExternalSyntheticLambda0;->f$6:Ljava/io/File;

    invoke-static/range {v0 .. v6}, Lcom/venter/shellapp/PHPProcess;->$r8$lambda$2ex4KfKhNANORBlsXRh5GkZdx38(Lcom/venter/shellapp/PHPProcess;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
