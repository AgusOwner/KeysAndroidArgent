.class public final synthetic Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/tools/zip/ZipEntry;

    check-cast p2, Lorg/apache/tools/zip/ZipEntry;

    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipFile;->lambda$new$1(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipEntry;)I

    move-result p1

    return p1
.end method
