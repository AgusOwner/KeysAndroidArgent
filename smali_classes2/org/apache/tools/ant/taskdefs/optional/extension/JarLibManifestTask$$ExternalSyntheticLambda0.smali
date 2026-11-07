.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/Project;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/Project;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->lambda$toExtensions$1(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p1

    return-object p1
.end method
