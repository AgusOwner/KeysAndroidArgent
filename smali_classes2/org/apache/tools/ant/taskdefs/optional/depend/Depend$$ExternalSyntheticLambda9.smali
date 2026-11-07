.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;->f$0:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;

    check-cast p1, Ljava/io/File;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->lambda$determineOutOfDateClasses$7$org-apache-tools-ant-taskdefs-optional-depend-Depend(Ljava/io/File;)V

    return-void
.end method
