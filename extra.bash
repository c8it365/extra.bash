{
  PACKAGE='foo'
  VERSION='1.0.0'

  CWD=$(cd $(dirname $0); pwd)
  PACKAGE_LIB=${CWD}/../lib/${PACKAGE}

  import() {
    . ${PACKAGE_LIB}/${1}.sh
  }
}
