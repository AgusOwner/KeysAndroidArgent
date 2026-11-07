.class public final synthetic Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintStream;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/Diagnostics;->$r8$lambda$DoIYq_FMz30pG7A-DI6va0pYfdw(Ljava/io/PrintStream;Ljava/lang/String;)V

    return-void
.end method
