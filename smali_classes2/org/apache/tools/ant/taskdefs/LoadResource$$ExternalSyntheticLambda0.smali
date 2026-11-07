.class public final synthetic Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/LoadResource;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/LoadResource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/LoadResource;

    iput p2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/LoadResource;

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/LoadResource;->lambda$execute$0$org-apache-tools-ant-taskdefs-LoadResource(ILorg/apache/tools/ant/filters/util/ChainReaderHelper;)V

    return-void
.end method
