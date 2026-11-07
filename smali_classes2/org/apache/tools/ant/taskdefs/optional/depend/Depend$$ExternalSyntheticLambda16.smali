.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;->f$1:Ljava/util/List;

    check-cast p1, Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->lambda$getClassFiles$8$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/util/List;Ljava/io/File;)V

    return-void
.end method
