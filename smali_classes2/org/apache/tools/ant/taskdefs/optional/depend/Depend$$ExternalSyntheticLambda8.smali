.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->lambda$dumpDependencies$6$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
