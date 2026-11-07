.class public final synthetic Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Process;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->lambda$deleteAfter$0(Ljava/lang/Process;Ljava/io/File;)V

    return-void
.end method
